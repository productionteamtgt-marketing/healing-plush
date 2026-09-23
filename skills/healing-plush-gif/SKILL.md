---
name: healing-plush-gif
description: 将严格4×4的16宫格正方形分镜拆成16张1080×1080独立PNG、ZIP压缩包和1080×1080无限循环GIF；适用于用户要求拆分分镜、导出逐帧图片或制作GIF。 Split a strict 4×4 square storyboard into sixteen 1080×1080 PNG frames, a ZIP archive, and a looping 1080×1080 GIF.
---

# 中文｜分镜拆帧与 GIF

把一张严格 `4 columns × 4 rows` 的正方形16宫格分镜，按从左到右、从上到下的顺序拆成16张独立图片，并生成 ZIP 与无限循环 GIF。

## 默认交付

- 16张 `1080×1080 px` PNG，命名为 `frame-01.png` 至 `frame-16.png`。
- 一个只包含上述16张 PNG 的 ZIP，不包含 `.DS_Store` 或 `__MACOSX`。
- 一个 `1080×1080 px`、16帧、4 FPS、4秒、无限循环的 GIF。
- 不修改或删除输入的主分镜。

## 使用方式

优先运行随 skill 提供的脚本：

```bash
bash scripts/split_storyboard_gif.sh <input-storyboard.png> <story-name> [project-root] [fps] [gutter-inset]
```

- `input-storyboard.png`：严格4×4、正方形分镜图。
- `story-name`：只允许小写英文字母、数字和连字符，例如 `riri-shy-wave-loop`。
- `project-root`：可选，默认为当前目录；必须包含 `output/` 或允许脚本创建它。
- `fps`：可选，默认为 `4`。
- `gutter-inset`：可选，每个画格四边统一向内裁切的像素数；默认按单格宽度的 `1/64` 自动计算，用于彻底排除白色外框与宫格分隔线。

若调用环境中的 skill 位于 `~/.codex/skills/healing-plush-gif/`，从该 skill 目录运行脚本，或使用脚本的绝对路径。开始前确认系统可以调用 `ffmpeg`、`ffprobe` 和 `zip`。

## 输出归档

固定使用比例与分辨率目录，不使用 `v1`、`v2` 表示尺寸：

```text
output/frames/<story-name>/1x1/1080x1080/
├── frames/frame-01.png ... frame-16.png
└── <story-name>-frames-1x1-1080x1080.zip

output/gifs/<story-name>/1x1/1080x1080/
└── <story-name>-1x1-1080x1080.gif
```

若目标文件已经存在，脚本必须停止，不得覆盖。只有用户明确要求替换时，才可以先处理现有文件后重新运行。

拆分时，每格必须使用完全相同的向内裁切值、正方形尺寸和缩放方式。不得按单帧内容做不同裁切、自动居中或不同倍率缩放，否则会制造背景跳动。统一裁掉宫格线可以消除由白边和边界不一致造成的假性抖动；若原始分镜各格的背景或机位本身不同，应明确说明无法仅靠拆帧完全修复，必要时重新生成锁定机位的分镜。

## 检查

完成后验证：独立 PNG 恰好16张；首尾画格均为1080×1080；ZIP 中恰好16张 PNG且没有系统元数据；GIF 为1080×1080、16帧、指定 FPS并无限循环。向用户提供 frames 文件夹、ZIP 和 GIF 的完整路径。

---

# English | Storyboard to GIF

Split one strict `4 columns × 4 rows` square storyboard into sixteen independent images in left-to-right, top-to-bottom order, then create a ZIP archive and an infinitely looping GIF.

## Default deliverables

- Sixteen `1080×1080 px` PNG files named `frame-01.png` through `frame-16.png`.
- One ZIP containing exactly those sixteen PNG files, without `.DS_Store` or `__MACOSX` metadata.
- One `1080×1080 px`, 16-frame, 4 FPS, 4-second, infinitely looping GIF.
- Preserve the input master storyboard unchanged.

## Usage

Prefer the bundled deterministic script:

```bash
bash scripts/split_storyboard_gif.sh <input-storyboard.png> <story-name> [project-root] [fps] [gutter-inset]
```

- `input-storyboard.png`: a strict 4×4 square storyboard sheet.
- `story-name`: lowercase letters, digits, and hyphens only, such as `riri-shy-wave-loop`.
- `project-root`: optional; defaults to the current directory and may contain or create `output/`.
- `fps`: optional; defaults to `4`.
- `gutter-inset`: optional; the identical number of pixels cropped inward from every side of every cell. It defaults to `1/64` of one cell's width to exclude white outer borders and grid gutters completely.

When installed under `~/.codex/skills/healing-plush-gif/`, run the script from that skill directory or use its absolute path. Confirm that `ffmpeg`, `ffprobe`, and `zip` are available before starting.

## Output organization

Use explicit aspect-ratio and resolution folders. Never use `v1` or `v2` to represent size:

```text
output/frames/<story-name>/1x1/1080x1080/
├── frames/frame-01.png ... frame-16.png
└── <story-name>-frames-1x1-1080x1080.zip

output/gifs/<story-name>/1x1/1080x1080/
└── <story-name>-1x1-1080x1080.gif
```

If any target already exists, the script must stop instead of overwriting it. Replace existing assets only when the user explicitly requests replacement.

Use exactly the same inward crop, square crop size, and scaling method for all sixteen cells. Never auto-center, content-crop, or scale frames independently because that creates background jumps. Removing gutters uniformly eliminates apparent jitter caused by inconsistent white borders; if the source storyboard itself contains camera or background drift, disclose that splitting alone cannot fully repair it and regenerate a locked-camera storyboard when necessary.

## Validation

Verify exactly sixteen PNG frames; 1080×1080 dimensions for the first and last frames; exactly sixteen PNG entries and no system metadata in the ZIP; and a 1080×1080, 16-frame, requested-FPS, infinitely looping GIF. Report full paths to the frames folder, ZIP, and GIF.
