#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 || $# -gt 5 ]]; then
  echo "Usage: $0 <input-storyboard.png> <story-name> [project-root] [fps] [gutter-inset]" >&2
  exit 2
fi

input_path="$1"
story_name="$2"
project_root="${3:-$PWD}"
fps="${4:-4}"

if [[ ! -f "$input_path" ]]; then
  echo "Input storyboard not found: $input_path" >&2
  exit 1
fi

if [[ ! "$story_name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "story-name must contain only lowercase letters, digits, and single hyphen separators." >&2
  exit 1
fi

if [[ ! "$fps" =~ ^[1-9][0-9]*$ ]]; then
  echo "fps must be a positive integer." >&2
  exit 1
fi

for required_command in ffmpeg ffprobe zip; do
  if ! command -v "$required_command" >/dev/null 2>&1; then
    echo "Required command not found: $required_command" >&2
    exit 1
  fi
done

dimensions="$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 "$input_path")"
width="${dimensions%x*}"
height="${dimensions#*x}"

if [[ "$width" != "$height" ]]; then
  echo "Input must be square; received ${width}x${height}." >&2
  exit 1
fi

if (( width % 4 != 0 )); then
  echo "Input dimensions must be divisible by 4; received ${width}x${height}." >&2
  exit 1
fi

cell_size=$((width / 4))
default_gutter_inset=$((cell_size / 64))
if (( default_gutter_inset < 2 )); then
  default_gutter_inset=2
fi
gutter_inset="${5:-$default_gutter_inset}"

if [[ ! "$gutter_inset" =~ ^[0-9]+$ ]]; then
  echo "gutter-inset must be a non-negative integer." >&2
  exit 1
fi

crop_size=$((cell_size - 2 * gutter_inset))
if (( crop_size <= 0 )); then
  echo "gutter-inset is too large for ${cell_size}px cells." >&2
  exit 1
fi
frames_root="$project_root/output/frames/$story_name/1x1/1080x1080"
frames_dir="$frames_root/frames"
zip_path="$frames_root/$story_name-frames-1x1-1080x1080.zip"
gif_dir="$project_root/output/gifs/$story_name/1x1/1080x1080"
gif_path="$gif_dir/$story_name-1x1-1080x1080.gif"

if [[ -e "$frames_root" || -e "$gif_dir" ]]; then
  echo "Output already exists for story '$story_name'; refusing to overwrite." >&2
  exit 1
fi

mkdir -p "$frames_dir" "$gif_dir"

for row in 0 1 2 3; do
  for col in 0 1 2 3; do
    index=$((row * 4 + col + 1))
    x=$((col * cell_size + gutter_inset))
    y=$((row * cell_size + gutter_inset))
    printf -v frame_number '%02d' "$index"
    ffmpeg -loglevel error -y -i "$input_path" \
      -vf "crop=${crop_size}:${crop_size}:${x}:${y},scale=1080:1080:flags=lanczos" \
      -frames:v 1 "$frames_dir/frame-$frame_number.png"
  done
done

(
  cd "$frames_root"
  zip -rq "$story_name-frames-1x1-1080x1080.zip" frames -x '*/.DS_Store' '__MACOSX/*'
)

ffmpeg -loglevel error -y -framerate "$fps" -i "$frames_dir/frame-%02d.png" \
  -filter_complex "[0:v]split[s0][s1];[s0]palettegen=max_colors=256:stats_mode=diff[p];[s1][p]paletteuse=dither=sierra2_4a:diff_mode=rectangle" \
  -loop 0 "$gif_path"

frame_count="$(find "$frames_dir" -type f -name 'frame-*.png' | wc -l | tr -d ' ')"
zip_png_count="$(unzip -Z1 "$zip_path" | grep -c '\.png$')"
gif_metadata="$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height,nb_frames -of csv=s=x:p=0 "$gif_path")"

if [[ "$frame_count" != "16" || "$zip_png_count" != "16" || "$gif_metadata" != "1080x1080x16" ]]; then
  echo "Validation failed: frames=$frame_count zip_pngs=$zip_png_count gif=$gif_metadata" >&2
  exit 1
fi

printf 'Frames: %s\nZIP: %s\nGIF: %s\n' "$frames_dir" "$zip_path" "$gif_path"
