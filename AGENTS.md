# Mellow Days production gate｜Mellow Days 制作门禁

## 中文（必须先执行）

本仓库中的角色图、场景图、静态贴文、轮播图、分镜、GIF、动画与视频都属于同一个长期 IP。任何生成、编辑、延展或拆帧任务开始前，必须先完整读取：

1. `docs/ip-guidelines/mellow-days-ip-guideline.md`
2. 与本次任务匹配的项目 Skill：
   - 角色或角色静态图：`skills/healing-plush/SKILL.md`
   - 分镜：`skills/healing-storyboard/SKILL.md`
   - 拆帧与 GIF：`skills/healing-plush-gif/SKILL.md`
   - 新建或修改固定空间：`skills/healing-plush-world/SKILL.md`
3. 若地点是固定世界，再完整读取对应空间规范：
   - 办公室：`output/worlds/office/office-world-guideline.md`
   - Riri 的家：`output/worlds/riri-home/riri-home-world-guideline.md`

不得只依赖对话记忆、旧分镜、动作帧、GIF 帧或最近生成图。若必需文件缺失、冲突或无法读取，必须在生成前说明；不得假装已经参考。

### 正式角色权威

- Riri／莉莉身份与比例：`output/characters/strawberry-plush-turnaround.png`
- Riri 材质与近景灯光：`output/characters/strawberry-plush.png`
- Nana／楠楠身份与比例：`output/characters/pineapple-plush-turnaround.png`
- Nana 材质与近景灯光：`output/characters/pineapple-plush.png`

每一张最终角色图、每一个分镜画格及每一段动画都必须直接引用对应 turnaround；场景图只提供姿势、服装、道具、机位和环境，不能取代角色原型。角色必须通过身份、眼睛、比例、纹样、附属结构、颜色和短绒材质检查后才可交付。Riri 睁眼时只能是完整纯黑豆豆眼及极小高光，禁止眼白、虹膜或独立瞳孔。

### 正式场景权威

- 办公室镜头必须使用办公室 master 和与镜头相关的分区板；不得生成通用办公室替代。
- Riri 家镜头必须以 `riri-home-world-02-plan-circulation.png` 为唯一户型母版，并按镜头引用区域、家具或灯光板；不得生成通用公寓替代。
- 未建立正式世界的地点可以新设计，但一张剧情图不能自动成为新的空间母版。

### 分镜、拆帧与 GIF 门禁

- 16 宫格主分镜：严格 4×4、2048×2048、统一分隔线、从左到右再从上到下阅读。
- 生成前先写清 16 个节拍；检查角色、服装、道具状态、建筑布局、主光方向和镜头轴线的连续性。
- 拆帧必须使用 `skills/healing-plush-gif/scripts/split_storyboard_gif.sh` 的统一坐标、统一内裁和统一缩放；禁止逐帧自动居中、内容裁切或不同倍率缩放。
- 最终必须逐项验证：16 张 PNG，全部 1080×1080；ZIP 只含 16 张 PNG；GIF 为 1080×1080、16 帧、无限循环；四边无宫格白线；固定背景不会因拆分而跳动。
- 若原始分镜本身有角色漂移、场景漂移或机位变化，拆帧不能伪装成修复。必须先修正分镜，再制作 GIF。

### 交付前必须报告

简短说明本次读取的 IP guideline、角色原型、空间母版（如适用）、验证结果与最终保存路径。未通过关键检查的资产不得标记为完成。

---

## English (mandatory preflight)

Every character image, environment image, social post, carousel, storyboard, GIF, animation, and video in this repository belongs to one persistent IP. Before any generation, edit, extension, or frame extraction, read in full:

1. `docs/ip-guidelines/mellow-days-ip-guideline.md`.
2. The matching project skill: `skills/healing-plush/SKILL.md`, `skills/healing-storyboard/SKILL.md`, `skills/healing-plush-gif/SKILL.md`, or `skills/healing-plush-world/SKILL.md`.
3. The matching world guideline when the location is canonical: `output/worlds/office/office-world-guideline.md` or `output/worlds/riri-home/riri-home-world-guideline.md`.

Do not rely only on conversation memory, old storyboards, action frames, GIF frames, or recent generations. If a required source is missing, conflicting, or unreadable, disclose that before generation and never claim it was referenced.

Use `strawberry-plush-turnaround.png` and `pineapple-plush-turnaround.png` as the direct identity and proportion authorities for Riri and Nana respectively; use the matching scene portrait only for close material and lighting. Every final character image and storyboard frame must directly reference the relevant turnaround. Scene images may supply pose, costume, props, camera, and environment but may never replace the prototype.

Office scenes must use the canonical office boards. Riri-home scenes must use `riri-home-world-02-plan-circulation.png` as the sole layout master plus the relevant zone boards. Never substitute a generic office or apartment.

For a sixteen-panel workflow, keep the master storyboard at a strict 4×4 and 2048×2048. Use the bundled deterministic script for identical crop coordinates, gutter inset, and scaling across all frames. Validate exactly sixteen 1080×1080 PNGs, a clean sixteen-PNG ZIP, and a 1080×1080 sixteen-frame infinite-loop GIF with no grid-line borders or extraction-induced movement. Source drift must be corrected in the storyboard rather than hidden during splitting.

Before delivery, report the guideline, character authority, world authority when applicable, validation result, and final paths. Do not mark an asset complete when a critical check fails.
