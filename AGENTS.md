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

Riri 叶冠的正式规则：每一片独立叶子本身都从叶根到叶尖沿长度方向分为约一半柔和绿色、一半暖米色；外侧、侧面和背面的叶片也一样。不得出现整片全绿或全米色叶子，不能以单色叶子交错代替。短果梗保持绿色。

### 正式场景权威

- 办公室镜头必须使用办公室 master 和与镜头相关的分区板；不得生成通用办公室替代。
- Riri 家镜头必须以 `riri-home-world-02-plan-circulation.png` 为唯一户型母版，并按镜头引用区域、家具或灯光板；不得生成通用公寓替代。
- 未建立正式世界的地点可以新设计，但一张剧情图不能自动成为新的空间母版。

### 固定空间的布局验收门禁

- 生成前，先根据正式俯视母版确定可实现的机位，并逐项写清镜头可见的固定墙体、门窗、家具和设备：相邻关系、从左到右顺序、操作面朝向、门扇开启方向及通行净空。画面好看不能成为移动固定设备的理由；旧剧情图只可辅助动作与构图。
- Riri 家厨房必须固定在户型右下角。底部主操作台从左到右为储物／备餐、炉灶与嵌入式烤箱、水槽；银色高冰箱位于最右端，紧邻右墙短回转。炉灶旋钮、烤箱门、水槽操作侧和冰箱门必须依空间规范朝向室内；冰箱左侧开门与站立区域必须净空。不得把炉灶和水槽拆到两面不同的墙、移动冰箱、增加岛台，或把设备操作面翻向墙壁。
- 如果选定机位无法同时合理看到所需设备，应调整机位或拆成近景镜头，不能改变母版来迎合构图。
- 固定场景的多图系列必须先生成并检查首张场景锚点图，确认固定设备位置与机位吻合后再制作其余图。每张最终成图都要和母版逐项比对；仅在提示词中写了“严格遵照母版”不算通过验收。
- 任何一张出现关键结构、设备顺序、朝向或动线错误，就先修正并复查全组；不得把该组标为正式、可发布或已完成。若无法修正，必须明确报告未通过及原因，不得悄悄交付。

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

Riri's leaf crown has two colors within each individual leaf: approximately half muted green and half warm cream along its length from base to tip, including outer, side, and rear leaves. Never use all-green or all-cream leaves or alternate separate single-color leaves. Keep the short central stem green.

Office scenes must use the canonical office boards. Riri-home scenes must use `riri-home-world-02-plan-circulation.png` as the sole layout master plus the relevant zone boards. Never substitute a generic office or apartment.

Before generating an approved location, derive a physically possible camera position from its plan and map visible fixed elements, adjacency, left-to-right order, operating faces, door swings, and clear circulation. A prior story image is only pose/composition guidance; aesthetic composition never authorizes moving fixtures. In Riri's lower-right L-shaped kitchen, the bottom-wall main counter runs left to right through storage/prep, stove with built-in oven, and sink. The tall silver refrigerator stays at the far-right end beside the short right-wall return, with its room-facing door and clear opening/standing space to its left. Stove controls, oven door, and sink access face the room. Do not put stove and sink on different walls, move the refrigerator, add an island, or turn an operating face toward a wall. If a shot cannot show the required elements without breaking the plan, change the camera or use close-ups instead.

For a multi-image series at a canonical location, generate and inspect the first scene anchor before producing the rest. Inspect every actual final image against the plan; wording in the prompt alone does not prove compliance. Correct and recheck any critical mismatch before delivery. Never call a conflicting or unverified asset final, approved, or publish-ready; state the failure plainly if correction is not possible.

For a sixteen-panel workflow, keep the master storyboard at a strict 4×4 and 2048×2048. Use the bundled deterministic script for identical crop coordinates, gutter inset, and scaling across all frames. Validate exactly sixteen 1080×1080 PNGs, a clean sixteen-PNG ZIP, and a 1080×1080 sixteen-frame infinite-loop GIF with no grid-line borders or extraction-induced movement. Source drift must be corrected in the storyboard rather than hidden during splitting.

Before delivery, report the guideline, character authority, world authority when applicable, validation result, and final paths. Do not mark an asset complete when a critical check fails.
