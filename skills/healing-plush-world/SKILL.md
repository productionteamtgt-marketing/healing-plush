---
name: healing-plush-world
description: 为治愈公仔建立具备真实建筑逻辑、连续镜头可行性与长期叙事能力的统一空间世界观；适用于办公室、住宅、餐厅、商店、交通空间等 recurring location 的设计、修改和场景一致性维护。 Create or revise coherent architectural world bibles for recurring Healing Plush locations used in AI video, animation, storyboards, and social content.
---

# 中文｜治愈公仔空间世界观

把一个地点设计成可长期复用的叙事空间系统，而不是单张效果图。空间必须真实可建、动线连续、镜头可执行，并能在后续 AI 视频、动画、Vlog、分镜和静态内容中维持建筑、家具、材质与灯光的一致性。

## 调用时整理输入

用户显式调用 `$healing-plush-world` 时，先用以下格式复述已知信息；缺少会实质改变空间的内容时才询问：

```text
空间类型：
主要角色／使用者：
长期发生的活动：
季节／时间：
必须包含：
必须避免：
```

空间类型与长期活动是核心输入。季节或时间可留空；没有指定时，默认采用中性晴天日间状态。不要把某个既有空间的房间数量、布局或配色自动复制到新场景。

## 先建立空间逻辑

生成图像前，先在提示词中明确：

- 场地类型、合理面积、层数、层高、入口和主要采光方向。
- 房间或功能区的数量、相邻关系、门窗位置、主通道与角色移动路线。
- 固定建筑元素、固定家具、可移动道具和禁止出现的元素。
- 角色相对于门、桌、椅、台面和设备的合理尺度。
- 至少一条可连续完成的叙事动线，例如入口 → 点单 → 就座 → 用餐 → 离开。

建筑逻辑一经确认，后续画板不得暗中移动门窗、增减房间、交换功能区或改变主屏幕方向。反打镜头必须说明为反向视角。

## 默认空间设定套件

默认生成六张 `1:1` 电影建筑视觉设定板，并附一份文字规范：

1. `01-master`：空间身份母版；主透视、整体气质及关键分区同屏呈现。
2. `02-plan-circulation`：俯视平面、轴测关系、入口、动线和镜头移动路径。
3. `03-primary-zone`：最常发生剧情的主要区域及角色尺度。
4. `04-support-zones`：次要功能区、相邻关系与门口视线。
5. `05-material-furniture`：固定材质、家具、设备、道具规则与色板。
6. `06-lighting-camera`：早晨、日间、雨天、日落、夜间等灯光状态及推荐机位。
7. `<world-name>-guideline.md`：把建筑、材质、家具、道具、镜头、灯光和禁止项写成可检索的空间规范。

若空间很简单，可以减少支撑画板；若用户指定数量或内容，以用户要求为准。画板使用 `1:1` 构图、电影建筑视觉排版、克制的杂志化留白与统一色彩，不做地产广告式英雄镜头。

## 视觉与场景原则

- 延续 Healing Plush 的温暖柔光、低对比柔和色板与细腻材质，但建筑本身保持真实尺度和施工逻辑。
- 空间是角色故事的舞台，不使用水果造型房间、主题乐园装饰或过量可爱符号。
- 避免廉价霓虹、高亮塑料、过度金色、大理石堆砌、样板房摆拍和不必要的装饰杂物。
- 家具、设备与道具必须服务具体活动；桌面和通道保持足够清晰，便于动作阅读。
- 镜头在广角建立、行动中景、情绪近景和道具特写间切换；避免鱼眼、漂浮机位、不可能的穿墙视角和空间瞬移。
- 同一空间的不同时间状态只能改变光线、天气和剧情道具，不能改变建筑布局。

## 使用参考图

输入图像必须标明角色：

- `edit target`：需要修改的现有空间图或设定板。
- `canonical world reference`：锁定建筑、家具、材质与空间身份的母版。
- `character scale reference`：只用于角色身份和比例，不替代空间母版。

创建一个新世界时，先完成并确认 `01-master`；其余画板都引用母版。后续任何发生在该场景的分镜或视频，也优先引用母版和相关分区板。

## 图像提示词骨架

```text
Use case: stylized-concept
Asset type: architectural world-bible board for recurring AI video and storyboard production
Primary request: 为【角色／系列】建立【空间类型】的统一空间世界观。
Architecture: 【面积、入口、门窗、房间／功能区、相邻关系、主通道】
Recurring actions: 【长期活动与连续动线】
Fixed elements: 【不得漂移的建筑、家具和设备】
Composition: square 1:1 cinematic architectural presentation, restrained editorial whitespace
Lighting/mood: warm, soft, realistic architectural light suitable for Healing Plush
Continuity: identical layout, dimensions, materials, furniture identity, screen direction and character scale across all boards
Text: none unless the user explicitly requests labels
Avoid: real-estate-advertising gloss, impossible architecture, layout drift, floating camera, fisheye, clutter, cheap theme styling, logos, watermarks
```

## 修改现有空间

修改时列出明确不变量，例如“只更换工位椅颜色；会议室座椅、布局与灯光不变”。需要同步更新的正式设定板和文字规范必须一起修改，避免图像与 guideline 冲突。不要因为一张剧情图中的偶然物件而改变空间母版。

## 输出归档

在 `healing-plush` 项目中保存为：

```text
output/worlds/<world-name>/
├── 1x1/
│   ├── <world-name>-world-01-master.png
│   ├── <world-name>-world-02-plan-circulation.png
│   ├── <world-name>-world-03-primary-zone.png
│   ├── <world-name>-world-04-support-zones.png
│   ├── <world-name>-world-05-material-furniture.png
│   └── <world-name>-world-06-lighting-camera.png
└── <world-name>-world-guideline.md
```

使用简短稳定的小写英文 `world-name`，例如 `home`、`restaurant`、`cafe`。不要用 `v1`、`v2` 表示尺寸。除非用户明确要求替换，否则不得覆盖现有正式世界设定。

## 完成检查

检查所有画板是否保持相同的入口、门窗、功能区、家具身份、材质、角色尺度和主光方向；确认平面图与透视图互相成立，连续动线可拍摄，文字规范与图像一致。关键要求失败时，只针对失败项迭代一次。

---

# English | Healing Plush Architectural Worlds

Design a recurring location as a reusable narrative system rather than a one-off rendering. The world must be architecturally plausible, navigable by a continuous camera, and stable across AI video, animation, vlogs, storyboards, and still content.

## Normalize the brief

When the user explicitly invokes `$healing-plush-world`, restate known information in this form and ask only for missing details that would materially change the design:

```text
Location type:
Primary characters/users:
Recurring activities:
Season/time:
Must include:
Must avoid:
```

Location type and recurring activities are essential. Season/time may be blank; default to neutral clear daytime. Never impose the room count, plan, or palette of an existing world onto a new location.

## Establish architectural logic first

Before generating, define the site type, plausible dimensions, levels, ceiling height, entrance, daylight direction, zones, adjacency, doors, windows, main circulation, fixed architecture, fixed furniture, movable props, character scale, and at least one continuous story route.

Once approved, do not silently move openings, add or remove rooms, swap zones, or reverse screen direction. Label reverse angles explicitly.

## Default world-bible package

Create six square cinematic architectural boards plus one written guideline by default:

1. `01-master`: identity master with hero perspective and key zones.
2. `02-plan-circulation`: plan, axonometric relationship, entry, movement, and camera routes.
3. `03-primary-zone`: the main recurring story area with character scale.
4. `04-support-zones`: secondary zones, adjacency, and doorway sightlines.
5. `05-material-furniture`: fixed materials, furniture, equipment, prop rules, and palette.
6. `06-lighting-camera`: time-of-day lighting states and recommended camera positions.
7. `<world-name>-guideline.md`: searchable rules for architecture, materials, furniture, props, cameras, lighting, and exclusions.

Reduce the set for a very simple location or follow a user-specified package. Use square cinematic architectural layouts, restrained editorial whitespace, and a coherent palette; avoid real-estate-advertising glamour.

## Core visual rules

- Extend Healing Plush warmth, soft light, low contrast, and tactile materials while keeping plausible architectural scale and construction.
- Treat the location as a stage for character stories; avoid fruit-shaped rooms, theme-park decoration, and excessive cute motifs.
- Avoid cheap neon, glossy plastic, excessive gold, marble overload, staged show-home clutter, fisheye distortion, floating cameras, impossible wall crossings, and spatial teleportation.
- Furniture, equipment, and props must support recurring actions and keep movement readable.
- Different time states may change light, weather, and story props—not the plan.

## References and continuity

Label each input as `edit target`, `canonical world reference`, or `character scale reference`. For a new world, establish `01-master` first; all later boards, storyboards, and video shots should reference the master and the relevant zone board.

When revising an existing world, list explicit invariants and update both affected boards and the written guideline. Do not promote incidental story props into permanent world rules.

## Output

In a `healing-plush` project, archive boards under `output/worlds/<world-name>/1x1/` and the guideline under `output/worlds/<world-name>/`. Use stable lowercase English names such as `home`, `restaurant`, or `cafe`; do not use `v1` or `v2` for dimensions. Do not overwrite an established world unless the user explicitly asks to replace it.

## Validation

Verify that every board preserves entrances, openings, zones, furniture identity, materials, character scale, and screen direction; plans and perspectives must agree, continuous routes must be filmable, and the written guideline must match the images. If a critical requirement fails, iterate once on that failure only.
