---
name: healing-storyboard
description: 为可爱软绒角色创建情节连贯的多宫格分镜，尤其适用于严格4×4的16宫格故事；当用户要求分镜图、宫格故事、连续镜头或治愈公仔视觉序列时使用。 Create coherent multi-panel storyboard sheets for cute plush characters, especially strict 4×4 sixteen-panel stories; use for storyboard, panel-sequence, or healing-plush visual-story requests.
---

# 中文｜治愈分镜

使用内置图像生成工具，把用户指定的角色、季节、环境与事件设计成一张连续、易读、可爱呆萌的多宫格分镜图。若用户提供或指向现有角色图，将它作为角色身份参考；若角色属于「治愈公仔」系列，延续其软绒玩偶质感、豆豆眼、短圆比例与温馨柔光。

## 每次调用时先展示输入格式

每次用户显式调用 `$healing-storyboard` 时，先向用户展示以下输入模板：

```text
根据____的形象设计一个16宫格的分镜图，要求可爱呆萌，
季节：
环境：
事件：
```

- 如果用户尚未提供这些信息，展示模板后请用户填写缺失项，再继续生成。
- 如果用户已经在同一条消息中提供完整信息，仍先用此模板简短复述并规范化其输入，然后直接继续，不重复提问。
- `季节` 可以留空；留空时不擅自强化特定季节。角色形象、环境和事件属于生成分镜所需的核心信息。

## 先编排，再生成

生成前先在提示词中写清逐格事件。每格只承担一个主要动作或反应，按阅读顺序形成明确的因果链：建立场景 → 发现目标 → 准备 → 尝试 → 小意外 → 调整 → 完成 → 温暖收尾。

根据事件挑选可爱的轻微冲突，例如物件太大、动作笨拙、短暂失败或惊讶反应。冲突必须安全、无伤害，并在结尾得到解决。

## 宫格与连续性

- 用户要求 16 宫格时，明确要求 `EXACTLY 16 equal panels`、严格 `4 columns × 4 rows`、从左到右再从上到下阅读。
- 使用清晰、细而统一的浅色分隔线；不得合并、缺失、增加或嵌套画格。
- 未指定数量时，根据故事复杂度选择合适宫格；不要默认强制 16 格。
- 在全部画格中锁定同一角色造型、服装、道具、场景布局、时间和主光方向。
- 让关键物件的状态按逻辑推进，例如完整鸡蛋 → 打入碗中 → 入锅 → 熟制 → 装盘，避免倒退或凭空变化。
- 用全景、中景、近景、俯拍细节和反应特写交替表达，但动作必须一眼能读懂。

## 角色与画面风格

- 角色始终保持可爱呆萌、温柔、无攻击性；避免同一格出现角色复制体。
- 治愈公仔角色默认头身比约 1:1，大头、短圆身体、短小四肢；暖米色圆脸、纯黑豆豆眼、粉橙腮红、极简小嘴。
- 角色和主体表面使用细腻短绒，避免塑料感、黏土感和写实人类皮肤。
- 把用户指定的季节转化成可见线索：窗外植物、花朵、光线、色板或少量室内装饰；保持背景简洁。
- 默认使用高品质三维家庭动画电影质感、低对比柔和配色、温暖柔光与细腻毛发。

## 图像提示词结构

```text
Use case: illustration-story
Asset type: 【数量】-panel storyboard contact sheet in one image
Input images: 【角色参考图的用途；仅作角色身份或风格参考】
Primary request: 【角色】在【季节】【环境】中经历【事件】，情绪为可爱呆萌、治愈。
Layout: EXACTLY 【数量】 equal panels in a strict 【列】×【行】 grid, read left-to-right and top-to-bottom; clear uniform gutters; no merged, missing, extra, or inset panels.
Storyboard beats:
Panel 1: 【建立场景】
Panel 2: 【动作或反应】
...
Panel N: 【解决事件并温暖收尾】
Continuity: same character identity, costume, environment, props, lighting, and logical object-state progression across every panel.
Style/medium: premium 3D family-animation-film storyboard, soft fuzzy plush textures, warm cinematic lighting.
Text: none.
Constraints: 【角色关键特征】；动作安全；情节连续；宫格数量准确。
Avoid: duplicate characters within a panel, inconsistent costume, broken object continuity, captions, panel numbers, speech bubbles, words, logos, watermarks, scary expressions, injury, plastic or clay textures.
```

## 参考图使用

若最近对话里有多张系列角色图，只把用户明确点名的角色作为身份参考，并在提示词中说明忽略其他角色。参考图只用于锁定外观和风格，不应限制新事件需要的姿势、镜头或表情。

## 输出归档

- 在 `healing-plush` 项目中使用时，最终分镜图保存到项目根目录的 `output/storyboards/`；若用户要求拆成独立镜头，保存到 `output/frames/<story-name>/`，压缩包保存到 `output/frames/`；GIF 保存到 `output/gifs/`；视频保存到 `output/videos/`。
- 不写死某位用户的绝对路径；从当前工作区定位包含 `skills/`、`docs/` 与 `output/` 的项目根目录。
- 使用清晰稳定的英文文件名，例如 `<story-name>-16-panel.png`、`<story-name>/frame-01.png` 至 `frame-16.png`。
- 默认只在项目 `output/` 中保留最终实体文件；图像生成器默认目录如需维持引用，应使用指向最终文件的链接，避免产生无法分辨的重复副本。

## 生成后检查

检查宫格数量与排列、阅读顺序、角色一致性、环境连续性、关键物件状态、事件是否完成，以及是否出现文字或水印。若关键要求失败，只针对失败项迭代一次。

---

# English | Healing Storyboard

Use the built-in image-generation tool to turn the user's character, season, setting, and event into a coherent, readable, cute multi-panel storyboard. When the user provides or points to an existing character image, treat it as the identity reference. For characters from the Healing Plush series, preserve their fuzzy plush material, black bean eyes, short rounded proportions, and warm soft lighting.

## Show the input format on every explicit invocation

Whenever the user explicitly invokes `$healing-storyboard`, first show this input template:

```text
Create a cute 16-panel storyboard based on ____'s appearance.
Season:
Setting:
Event:
```

- If required information is missing, show the template and ask the user to complete the missing fields before generating.
- If the same message already contains complete information, briefly restate it in this format and continue without asking again.
- Season may remain blank; do not introduce a strong seasonal theme when it is unspecified. Character identity, setting, and event are required.

## Plan before generating

Write every panel beat explicitly in the prompt before generation. Each panel should carry one primary action or reaction and form a clear causal sequence: establish the scene → identify the goal → prepare → attempt → minor mishap → adjust → complete → warm resolution.

Choose a safe, cute source of mild conflict appropriate to the event, such as an oversized object, clumsy movement, brief failure, or surprised reaction. The conflict must remain harmless and be resolved by the ending.

## Grid and continuity

- For a 16-panel request, require `EXACTLY 16 equal panels` in a strict `4 columns × 4 rows` grid, read left-to-right and top-to-bottom.
- Use thin, clear, uniform light-colored gutters. Never merge, omit, add, nest, or overlap panels.
- If the user does not specify a panel count, choose a count appropriate to the story complexity instead of automatically forcing sixteen panels.
- Lock the same character design, clothing, props, environment layout, time of day, and key-light direction throughout the sheet.
- Maintain logical object-state progression. For example: whole egg → cracked into bowl → poured into pan → cooked → plated. Do not reverse states or create objects without cause.
- Alternate wide, medium, close, overhead-detail, and reaction shots while keeping every action immediately readable.

## Character and visual style

- Keep characters cute, gentle, and non-aggressive. Do not duplicate a character within one panel.
- A Healing Plush character defaults to an approximately 1:1 head-to-body ratio, a large head, short rounded body and limbs, warm cream face, pure black bean eyes, peach-pink blush, and minimal mouth.
- Use fine soft short fur on the character and subject. Avoid plastic, clay, and realistic human-skin surfaces.
- Express a specified season through visible but restrained cues such as window plants, flowers, light, palette, or a few interior decorations. Keep backgrounds uncluttered.
- Default to a premium 3D family-animation-film finish with low-contrast soft color, warm diffused light, and fine fur detail.

## Image prompt structure

```text
Use case: illustration-story
Asset type: [count]-panel storyboard contact sheet in one image
Input images: [explain which image locks character identity and which, if any, is style-only]
Primary request: [character] experiences [event] in [season] at [setting], with a cute, gentle, comforting tone.
Layout: EXACTLY [count] equal panels in a strict [columns] × [rows] grid, read left-to-right and top-to-bottom; clear uniform gutters; no merged, missing, extra, or inset panels.
Storyboard beats:
Panel 1: [establishing beat]
Panel 2: [action or reaction]
...
Panel N: [resolution and warm ending]
Continuity: same character identity, costume, environment, props, lighting, and logical object-state progression across every panel.
Style/medium: premium 3D family-animation-film storyboard, soft fuzzy plush textures, warm cinematic lighting.
Text: none.
Constraints: [character invariants]; safe action; coherent story; exact panel count.
Avoid: duplicate characters within a panel, inconsistent costume, broken object continuity, captions, panel numbers, speech bubbles, words, logos, watermarks, scary expressions, injury, plastic or clay textures.
```

## Using references

If several series images are available in the recent conversation, use only the explicitly named character as the identity reference and state that other characters must be ignored. References lock identity and style but must not prevent the new poses, shots, or expressions required by the event.

## Output organization

- In the `healing-plush` project, save complete storyboard sheets under the project root's `output/storyboards/`. If the user requests separate shots, save them under `output/frames/<story-name>/`, store downloadable archives under `output/frames/`, GIFs under `output/gifs/`, and videos under `output/videos/`.
- Never hard-code a particular user's absolute path. Locate the project root containing `skills/`, `docs/`, and `output/` from the current workspace.
- Use clear, stable English filenames such as `<story-name>-16-panel.png` and `<story-name>/frame-01.png` through `frame-16.png`.
- Keep final physical files only under the project's `output/` by default. If a generator-default reference must remain valid, use a link to the final file instead of keeping an indistinguishable duplicate.

## Post-generation check

Check the panel count and layout, reading order, character identity, environment continuity, key-object states, completed event, and absence of text or watermarks. If a critical requirement fails, make one targeted iteration addressing only the failed item.
