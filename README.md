# Healing Plush

## 中文说明

`healing-plush` 是治愈系软绒角色项目，包含四个可独立安装的 Codex Skill、Mellow Days IP guideline，以及角色、空间和分镜成品。仓库根目录的 `AGENTS.md` 是团队使用 Codex 时的强制制作入口。

## 目录

```text
healing-plush/
├── skills/
│   ├── healing-plush/          # 角色设计与完整六图角色包
│   ├── healing-storyboard/     # 多宫格连续分镜
│   ├── healing-plush-gif/      # 16宫格拆帧与循环GIF
│   └── healing-plush-world/    # 可长期复用的固定空间世界
├── docs/
│   └── ip-guidelines/          # 品牌、角色与内容规范
└── output/
    ├── characters/             # 场景图、三视图、五视图、表情、动作、细节；旧版放 archive/
    ├── storyboards/            # 完整分镜图
    ├── frames/                 # 从分镜拆出的独立镜头及压缩包
    ├── gifs/                   # GIF 动画
    └── videos/                 # 视频成品
```

## Skills

### healing-plush

- 路径：[`skills/healing-plush/`](skills/healing-plush/)
- 用途：设计治愈系软绒角色。
- 默认交付：场景角色图、三视图、五视图、九宫格表情表、动作姿势表、角色细节表。

### healing-storyboard

- 路径：[`skills/healing-storyboard/`](skills/healing-storyboard/)
- 用途：根据角色、季节、环境和事件生成连续多宫格分镜。
- 16宫格默认采用严格的4×4排列。

### healing-plush-gif

- 路径：[`skills/healing-plush-gif/`](skills/healing-plush-gif/)
- 用途：把严格4×4分镜拆成16张1080×1080图片、ZIP及循环GIF。

### healing-plush-world

- 路径：[`skills/healing-plush-world/`](skills/healing-plush-world/)
- 用途：建立或修改具备真实建筑逻辑和连续镜头能力的固定叙事空间。

## IP Guideline

- [`Mellow Days IP Guideline`](docs/ip-guidelines/mellow-days-ip-guideline.md)
- 频道：Mellow Days
- 角色：Riri／莉莉与 Nana／楠楠

## 安装 Skills

团队成员应先在 Codex 中打开克隆后的 `healing-plush` 仓库作为工作区，让根目录 `AGENTS.md` 自动生效。再把以下四个完整文件夹分别复制到使用者的 `~/.codex/skills/`：

```text
skills/healing-plush/       → ~/.codex/skills/healing-plush/
skills/healing-storyboard/  → ~/.codex/skills/healing-storyboard/
skills/healing-plush-gif/   → ~/.codex/skills/healing-plush-gif/
skills/healing-plush-world/ → ~/.codex/skills/healing-plush-world/
```

每个 Skill 都必须保留完整目录；其中 `healing-plush-gif` 还包含必要脚本。安装后重新打开 Codex task，即可调用 `$healing-plush`、`$healing-storyboard`、`$healing-plush-gif` 与 `$healing-plush-world`。

## 维护规则

- `skills/` 下的项目版本是三个 Skill 的 canonical source。
- 不同画幅和分辨率必须使用明确的比例及像素目录分开存放，例如 `1x1/1080x1080`、`4x3/1448x1086`；不得用 `v1`、`v2` 表示尺寸差异。
- 修改 Skill 时先更新项目版本，再把完整 bundle 同步到 `~/.codex/skills/`。
- 所有最终生成资产归档在 `output/`；不要把唯一成品留在图像生成器默认目录。

---

## English

`healing-plush` is a cozy plush-character project containing four independently installable Codex skills, the Mellow Days IP guideline, and finished character, world, and storyboard assets. The root `AGENTS.md` is the mandatory Codex production entry point for the team.

### Project structure

```text
healing-plush/
├── skills/
│   ├── healing-plush/          # Character design and complete six-image package
│   ├── healing-storyboard/     # Coherent multi-panel storyboards
│   ├── healing-plush-gif/      # Sixteen-panel splitting and looping GIFs
│   └── healing-plush-world/    # Persistent architectural story worlds
├── docs/
│   └── ip-guidelines/          # Brand, character, and content rules
└── output/
    ├── characters/             # Scenes, turnarounds, five-views, expressions, actions, details; old versions in archive/
    ├── storyboards/            # Complete storyboard sheets
    ├── frames/                 # Individual frames and downloadable archives
    ├── gifs/                   # GIF animations
    └── videos/                 # Finished videos
```

### Skills

#### healing-plush

- Location: [`skills/healing-plush/`](skills/healing-plush/)
- Purpose: design cozy plush characters.
- Default deliverables: scene image, three-view turnaround, five-view sheet, nine-expression sheet, action-pose sheet, and character-detail sheet.

#### healing-storyboard

- Location: [`skills/healing-storyboard/`](skills/healing-storyboard/)
- Purpose: create coherent multi-panel storyboards from a character, season, setting, and event.
- Sixteen-panel requests use a strict 4×4 layout by default.

#### healing-plush-gif

- Location: [`skills/healing-plush-gif/`](skills/healing-plush-gif/)
- Purpose: split a strict 4×4 storyboard into sixteen 1080×1080 frames, a ZIP archive, and a looping GIF.

#### healing-plush-world

- Location: [`skills/healing-plush-world/`](skills/healing-plush-world/)
- Purpose: establish or revise a recurring location with plausible architecture and continuous-camera logic.

### IP guideline

- [`Mellow Days IP Guideline`](docs/ip-guidelines/mellow-days-ip-guideline.md)
- Channel: Mellow Days
- Characters: Riri / 莉莉 and Nana / 楠楠

### Installing the skills

First open the cloned `healing-plush` repository itself as the Codex workspace so its root `AGENTS.md` is automatically applied. Then copy all four complete skill folders into the user's `~/.codex/skills/` directory:

```text
skills/healing-plush/       → ~/.codex/skills/healing-plush/
skills/healing-storyboard/  → ~/.codex/skills/healing-storyboard/
skills/healing-plush-gif/   → ~/.codex/skills/healing-plush-gif/
skills/healing-plush-world/ → ~/.codex/skills/healing-plush-world/
```

Each skill must retain its complete directory; `healing-plush-gif` also includes a required script. Reopen a Codex task after installation, then invoke `$healing-plush`, `$healing-storyboard`, `$healing-plush-gif`, or `$healing-plush-world`.

### Maintenance rules

- The project copies under `skills/` are the canonical sources for all three skills.
- Store different aspect ratios and resolutions in separate, explicitly named folders such as `1x1/1080x1080` and `4x3/1448x1086`; never use `v1` or `v2` to represent size differences.
- Update the project copy first, then synchronize the complete bundle to `~/.codex/skills/`.
- Archive every final generated asset under `output/`; never leave the only final copy in the image generator's default directory.
