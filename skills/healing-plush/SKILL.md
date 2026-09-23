---
name: healing-plush
description: 将水果、食物、植物、动物或简单物件设计成完整的治愈系软绒角色包，默认包含场景图、三视图、五视图、表情表、动作表和细节表；适用于治愈公仔、系列角色延展和软萌收藏吉祥物。 Generate complete cozy plush-character packages with a scene, turnaround, five-view, expression, action, and detail sheet by default.
---

# 中文｜治愈公仔

使用内置图像生成工具创建统一系列感的治愈系软绒公仔。用户给出主体后，保留其关键辨识特征，将其转化为可拥抱的毛绒角色；除非用户要求，不添加文字、道具或额外角色。

## 默认交付六张图

每次创建角色，都在同一任务内直接完成以下六份独立图像，不等待用户另行索取设定图或再次确认：

1. **场景角色图**：角色置于 Scene/backdrop 中，默认温馨室内背景，1:1 方形、全身居中。
2. **角色三视图原型**：同一角色的正面、右侧面、背面，按左到右排在一张横向三栏图中，默认约 2:1 画幅，暖米色干净摄影棚背景。
3. **角色五视图**：同一角色的正面、前 45°、严格右侧、后 45°、背面，按左到右排成等宽五栏。
4. **九宫格表情表**：严格 3×3 九格，展示九种清楚但温和的表情变化。
5. **动作姿势表**：以多个独立全身姿势展示站立、行走、奔跑、坐姿、挥手、思考、互动与庆祝等动作能力。
6. **角色细节表**：集中展示脸部、头部标志性结构和纹样、手脚、侧后结构及短绒材质等制作细节。

“同时交付”指一次任务完成六张图。为保持一致性，先完成场景角色图，再以该图生成三视图并确认角色原型；其余四张设定表全部以确认后的原型为直接身份参考，不得各自重新设计角色。三视图与五视图负责结构一致性，表情表、动作表和细节表只扩展各自指定的信息，不能取代原型。

用户明确只要部分输出、已有设定表无需重做，或另有交付要求时，遵从用户。仅修改已有角色的背景时，沿用已有原型；若修改角色设计或比例，则同步校准场景图、三视图、五视图、表情表、动作表和细节表，不混用前后版本。

## 固定视觉语言

- 新角色无指定比例时，以头身比约 1:1 为起点：头大，身体短圆，四肢短小圆润。用户指定的角色原型优先于此默认比例；已有角色不重新套用 1:1。
- 全身呈细腻柔软的短绒毛质感，蓬松、软糯，有可辨识的细软纤维和柔软边缘，避免塑料感、黏土感和坚硬表面。
- 脸部为圆润暖米色；纯黑豆豆眼带微弱高光；淡粉橙腮红；极简小嘴；表情安静、温柔、无攻击性。
- 主体的标志性颜色和结构集中在大头造型上；果蒂、叶冠、耳朵等附属结构使用圆润的毛绒造型，并与头部自然连接。
- 系列角色默认只有头部承载水果、食物或物体的主体颜色与纹样；躯干、双臂和双腿统一使用奶油白色短绒，不添加独立肚皮色块。只有用户明确指定，或用户指定的既有角色原型已经定义了不同身体配色时，才可偏离这一规则。
- 使用低对比柔和配色、暖色柔光和轻微轮廓光。场景图可用浅景深和柔和散景；所有角色设定表须让角色、动作和细节清晰，不用景深模糊遮蔽结构。
- 高品质三维家庭动画电影角色渲染，细腻毛发细节，温馨、可收藏、可拥抱。
- 场景图默认单角色、全身居中、平视，完整展示四肢。所有设定表中的多个形象都是同一角色的不同视角、表情、姿势或局部，不是不同角色或剧情场景。

## 默认背景

- 场景角色图默认使用温馨室内客厅背景：暖米色、奶油色与蜂蜜木色为主，窗边金色自然光，远处只保留少量柔焦家具、靠垫或绿植，配合浅景深和圆润散景。背景须安静简洁，不抢角色主体，不出现可读文字、品牌或多余角色。
- 默认让角色站在柔软的奶油色短绒地毯上，并保留自然柔和的接触阴影；主光从画面左后方或侧后方进入，形成温暖高光和轻微轮廓光。
- 同一系列的新角色在用户未指定环境时沿用这套背景、色温、机位与景深语言，以保持角色图之间的系列一致性。用户明确指定其他背景时，以用户要求为准。
- 三视图、五视图、表情表、动作表和细节表不使用客厅场景，固定为均匀干净的暖米色摄影棚背景，仅保留必要的轻柔接触影，确保结构清晰。

## 输出归档

- 在 `healing-plush` 项目中使用时，所有最终输出统一保存到项目根目录的 `output/`，不得只留在图像生成器的默认目录。不要写死某位用户的绝对路径；从当前工作区定位包含 `skills/`、`docs/` 与 `output/` 的项目根目录。
- 六张角色图统一保存到 `output/characters/`；分镜图保存到 `output/storyboards/`；拆分的独立画格保存到 `output/frames/`；视频保存到 `output/videos/`。游戏专用素材不归档到本项目；若用户指定独立游戏项目，则保存到该游戏项目的素材目录。
- 使用清晰、稳定的英文文件名：`<character>-plush.png`、`<character>-plush-turnaround.png`、`<character>-plush-five-view.png`、`<character>-plush-expressions.png`、`<character>-plush-actions.png`、`<character>-plush-details.png`。改版时先把旧版改为 `-v1`、`-v2` 等版本名，再让当前确认版本使用稳定主文件名。
- 默认只在 `healing-plush/output` 保留最终实体文件；生成器默认目录如需维持引用，应使用指向最终文件的链接，避免产生无法分辨的重复副本。

## 生成流程

1. 将新角色设计归类为 `stylized-concept`，使用内置图像生成工具；对已有角色的延续与编辑，明确保留身份。
2. 先查看对话或当前项目中已有的角色原型。若是同一个角色，原型锁定身份、比例、五官、附属结构、配色和毛绒材质，不能被旧动作帧或新生成结果自动替代。若是新增系列角色，可将最近且最相关的系列图片作为“仅限风格参考”，继承渲染、比例语言、脸型和灯光，不复制原主体的解剖或纹样。
3. 从用户指定主体提炼 2–4 个不可缺失的辨识特征，例如草莓籽、菠萝菱格、番茄果蒂。把尖锐或坚硬结构软化为圆润短绒、绗缝或蓬松结构，同时保持一眼可辨。
4. 生成场景角色图：明确主体、场景、构图、灯光、色板、材质和约束。检查设计后，以这张图作为新角色三视图的直接参考；若已有用户指定原型，全部输出都必须参考该原型。
5. 直接生成三视图：正面、严格右侧面、背面；同一自然站姿、同一尺度、同一地面基线、相同相机高度与柔光。三个视角完整展示头顶至脚底，等宽分栏、留足间距，不裁切、不重叠。保持头身比、四肢长度、躯干体积、叶冠或耳朵的结构、颜色和毛绒密度一致。隐藏部位须依据已有原型；新角色没有已定义的背面时，做与正面结构连续的简洁设计，不擅加尾巴、饰品或新花纹。
6. 以三视图原型为直接身份参考，依次生成五视图、九宫格表情表、动作姿势表和角色细节表。每次提示词都重复身份不变量：头身比例、脸型、豆豆眼、身体颜色、头部纹样、附属结构、肢体长度和毛绒材质。只允许当前设定表所需的视角、表情、姿势或局部尺度变化。
7. 一起复核六张图：主体可辨、比例符合用户原型或本次确定的新设计、细绒与附属结构自然、肢体数量正确、无文字和水印；三视图与五视图角度准确；表情表严格九格；动作完整且没有比例漂移；细节表没有生成矛盾结构。若关键条件失败，只针对失败点迭代一次；仍有差异时如实指出，不标为已通过的一致角色包。
8. 展示并明确区分六份输出。将图像保存到 `output/characters/`，使用规定的稳定文件名。已有项目角色规范时记录原型路径；后续动画和比例修改直接引用三视图原型，其他设定表只提供其命名范围内的信息。用户明确改版时保留旧版，并使全部新版设定图与原型记录对应一致。

## 场景角色图提示词骨架

```text
Use case: stylized-concept
Asset type: square collectible plush character scene
Primary request: 将【主体】设计为治愈系软萌公仔。
Reference role: 【如有角色原型，明确其为身份、比例和材质依据；其他系列图片仅作风格参考】。
Scene/backdrop: 温馨室内客厅背景；暖米色、奶油色与蜂蜜木色；窗边金色自然光；少量柔焦家具、靠垫或绿植；角色站在奶油色短绒地毯上；浅景深与圆润散景；背景安静简洁，不抢主体。
Subject: 单个角色；【用户原型比例，或无原型的新设计默认头身比约1:1】；大头、短圆身体、短小四肢；保留【主体辨识特征】并将其柔软毛绒化；主体颜色和纹样默认只在头部，躯干与四肢统一为奶油白色短绒且无独立肚皮色块。
Style/medium: 高品质三维家庭动画电影角色渲染，细腻短绒与柔软散毛边缘，软糯可拥抱。
Composition/framing: 1:1 方形，全身居中，平视，四肢完整。
Lighting/mood: 主光默认从画面左后方或侧后方进入，暖色柔光、柔和高光与轻微轮廓光，安静治愈。
Face: 暖米色圆脸，纯黑豆豆眼带微弱高光，粉橙腮红，极简小嘴。
Constraints: 主体一眼可辨；附属结构与头部自然连接；奶油白色身体与四肢；单角色；无文字。
Avoid: 身体或四肢沿用主体色、独立肚皮色块、水印、标志、额外角色、尖锐结构、攻击感、塑料感、黏土感、过长四肢、杂乱背景。
```

## 角色三视图提示词骨架

```text
Use case: identity-preserve
Asset type: plush character turnaround reference sheet
Primary request: 为参考图中的同一只毛绒公仔制作正面、右侧面、背面三视图，不重新设计角色。
Reference role: 【用户指定原型；若为新角色，则使用刚生成的场景角色图】是角色身份、比例、配色和材质的依据；场景背景不复制。
Scene/backdrop: 干净均匀的暖米色摄影棚背景，只有轻柔接触影，无道具和场景装饰。
Composition/framing: 约2:1横向画幅，等宽三栏，从左到右为正面、严格右侧面、背面；同一只公仔的三个视角，均为自然站姿、全身完整、同一尺度、同一脚底基线和平视相机高度；留足间距，无文字标签、无分隔线。
Identity/proportions: 严格保持【从角色参考中观察到的头身比例、脸型、四肢长度、躯干体积和附属结构】；视角变化只改变透视与遮挡，不改变设计。背面遵循已有原型或与新角色正面连续的结构，不新增装饰。
Material/lighting: 三个角度保持同样的细软短绒、蓬松程度、纤维细节、柔软边缘及色彩；均匀暖白柔光，三个视角全身清晰。
Constraints: 肢体数量与角色设计一致，关节连接自然；侧面不是三分之四角度；背面不出现正面的眼睛或嘴；无裁切、无重叠、无额外角色、无水印。
Avoid: 比例漂移、长四肢、改变五官或叶冠、光滑塑料、黏土表面、毛绒密度变化、戏剧化光影、杂乱背景。
```

## 角色五视图提示词骨架

```text
Use case: identity-preserve
Asset type: plush character five-view model sheet
Primary request: 为参考原型中的同一只毛绒公仔制作五视图，不重新设计角色。
Reference role: 已确认的三视图原型是角色身份、比例、结构、配色、纹样和材质的唯一依据；场景图只辅助理解整体气质。
Scene/backdrop: 干净均匀的暖米色摄影棚背景，只有轻柔接触影，无道具和装饰。
Composition/framing: 横向等宽五栏，从左到右严格为正面、前 45°、右侧面、后 45°、背面；五个视角全身完整、同一自然站姿、同一尺度、同一脚底基线与相机高度；无文字标签、无分隔线。
Identity/proportions: 每个视角严格保持原型的头身比、体积、四肢长度、脸部位置、头部纹样和附属结构；只改变观察角度。
Constraints: EXACTLY 5 views；侧面必须是真正侧面；后 45°不能露出不合理的完整正脸；背面不得出现眼睛或嘴；无裁切、无重叠、无水印。
Avoid: 缺少或增加视角、多个角色设计、比例漂移、花纹随机变化、左右结构矛盾、长四肢、塑料或黏土质感。
```

## 九宫格表情表提示词骨架

```text
Use case: identity-preserve
Asset type: plush character nine-expression sheet
Primary request: 为参考原型中的同一只毛绒公仔制作九种可读、温和、适合社交媒体的表情，不改变角色设计。
Reference role: 已确认的三视图原型锁定身份、比例、五官形式、配色、纹样、附属结构和毛绒材质。
Scene/backdrop: 干净均匀的暖米色摄影棚背景；每格背景、尺度和光线一致。
Layout: EXACTLY 9 equal panels in a strict 3 columns × 3 rows grid; thin uniform gutters; no merged, missing, extra, or inset panels.
Expressions: 平静、开心、笑到眯眼、惊讶、担心或想太多、轻微不满、难过、困倦、被安慰后的安心；可按用户指定角色性格调整，但保持九种清楚不同的情绪。
Identity/proportions: 以头肩或上半身为主，头部尺寸、脸型和标志结构在九格一致；表情只通过豆豆眼形态、极简嘴形、腮红、头部轻微倾斜和柔和姿态变化表达。
Constraints: 默认纯黑豆豆眼，不生成眼白、写实牙齿或人类嘴唇；同一格只有一个角色；无文字、表情名称、符号和水印。
Avoid: 角色复制体挤在同一格、恐怖或攻击性表情、脸型漂移、眼睛风格变化、夸张人类五官、塑料或黏土质感。
```

## 动作姿势表提示词骨架

```text
Use case: identity-preserve
Asset type: plush character action and pose sheet
Primary request: 为参考原型中的同一只毛绒公仔制作一组清楚、可爱、可用于动画参考的全身动作。
Reference role: 已确认的三视图原型锁定身份和身体结构；动作不得改变角色的头身比例、四肢长度、纹样或附属结构。
Scene/backdrop: 干净均匀的暖米色摄影棚背景，每个姿势有独立留白和轻柔接触影，无剧情场景。
Composition/framing: 默认严格 2×4 八格，每格一个完整全身姿势，可包含自然站立、行走、奔跑、坐下、挥手、思考、小心互动和开心庆祝；用户指定动作时以用户要求为准。
Motion clarity: 通过重心、身体倾斜、短肢摆动、头部朝向和附属结构的轻微跟随表现动作；姿势应能一眼辨认且安全无攻击性。
Constraints: 每格仅出现同一个角色的一次；角色从头顶到脚底完整；接触地面的动作有合理重心；跳跃动作保留柔和落地感；无文字、编号和水印。
Avoid: 额外肢体、断裂关节、身体拉长、头部缩小、眼白、纹样漂移、同一格多个角色、危险动作、塑料或黏土质感。
```

## 角色细节表提示词骨架

```text
Use case: identity-preserve
Asset type: plush character construction and detail sheet
Primary request: 为参考原型中的同一只毛绒公仔制作角色细节表，记录后续制作和动画必须保持的视觉结构。
Reference role: 已确认的三视图原型是唯一结构依据；细节近景用于解释既有设计，不新增设计。
Scene/backdrop: 干净均匀的暖米色摄影棚背景，均匀柔光，无场景道具。
Composition/framing: 清楚分区展示完整正面基准、脸部与豆豆眼近景、头部标志结构与纹样、手脚与身体连接、严格侧面轮廓、背面结构，以及短绒纤维和接缝表现；每个局部边界清楚，不相互遮挡。
Detail priorities: 标明视觉上必须一致的形状、颜色分区、纹样分布逻辑、附属结构层次、奶油白身体规则和短绒材质；用画面本身说明，不生成文字标注。
Constraints: 所有局部都来自同一个角色；近景不得改变颜色、纹样、眼睛或材质；无文字、箭头、编号、Logo和水印。
Avoid: 凭空新增配件、器官或花纹、与原型矛盾的背面、写实解剖、眼白、硬塑料、光滑黏土或不同毛绒密度。
```

用户明确指定比例、背景、姿势、配色、表情或输出数量时，以用户要求为准，只保留不冲突的系列视觉语言。

---

# English | Healing Plush

Use the built-in image-generation tool to create a consistent series of cozy fuzzy plush characters. When the user provides a subject, preserve its defining features while turning it into a soft, huggable character. Do not add text, props, or additional characters unless requested.

## Default six-image package

Create all six independent images within the same task without waiting for a separate request or confirmation:

1. **Character scene:** the character in the requested Scene/backdrop, defaulting to a cozy indoor setting; square 1:1 frame with the full body centered.
2. **Three-view turnaround prototype:** front, strict right profile, and back views of the same character in three horizontal columns, approximately 2:1 overall, on a clean warm-cream studio background.
3. **Five-view model sheet:** front, front 45°, strict right profile, rear 45°, and back views in five equal columns.
4. **Nine-expression sheet:** a strict 3×3 grid showing nine distinct but gentle expressions.
5. **Action and pose sheet:** multiple isolated full-body poses demonstrating standing, walking, running, sitting, waving, thinking, interacting, and celebrating.
6. **Character-detail sheet:** focused views of the face, signature head structure and patterns, hands and feet, side and rear construction, and short-fur material.

“Deliver together” means completing all six images in one task. For consistency, create the scene first, use it to establish the three-view prototype, and then use the confirmed prototype as the direct identity reference for the remaining four sheets. Never redesign the character separately for each image. The three-view and five-view sheets define structure; the expression, action, and detail sheets extend only the information named by their sheet type and never replace the prototype.

Follow the user's request when they explicitly ask for only part of the package, already have a sheet that does not need regeneration, or specify a different delivery. For a background-only edit, retain the existing prototype. If character design or proportions change, recalibrate the scene, turnaround, five-view, expression, action, and detail sheets together; never mix versions.

## Fixed visual language

- For a new character without specified proportions, begin around a 1:1 head-to-body ratio: large head, short rounded body, and short rounded limbs. A user-provided prototype overrides this default; do not force an established character back to 1:1.
- Cover the full character in fine, soft, short fuzzy fur with visible fibers and soft edges. Avoid plastic, clay, or hard surfaces.
- Use a rounded warm-cream face, pure black bean eyes with tiny highlights, soft peach-pink blush, a minimal mouth, and a calm, gentle, non-aggressive expression.
- Concentrate the subject's defining color and construction on the oversized head. Render stems, leafy crowns, ears, and similar attachments as rounded plush forms naturally connected to the head.
- By default, only the head carries the fruit, food, plant, animal, or object color and pattern. The torso, arms, and legs use uniform cream-white short fur with no separate belly patch. Deviate only when the user explicitly asks or an approved prototype already defines another body treatment.
- Use low-contrast soft colors, warm diffused light, and a subtle rim light. The scene may use shallow depth of field and soft bokeh; every model sheet must keep the character, action, and construction clearly visible.
- Render with a premium 3D family-animation-film finish, fine fur detail, and a warm collectible, huggable quality.
- The scene defaults to one full-body character, centered at eye level with all limbs visible. Every repeated figure in a model sheet is the same character shown from a different view, expression, pose, or detail—not a cast of different characters.

## Default background

- The scene defaults to a cozy indoor living room in warm cream, beige, and honey wood. Use golden window light, a few softly blurred pieces of furniture, cushions, or plants, shallow depth of field, and rounded bokeh. Keep the background quiet and uncluttered with no readable text, branding, or extra characters.
- Place the character on a soft cream short-pile rug with a natural gentle contact shadow. The default key light enters from the upper-left rear or side-rear, creating warm highlights and a subtle rim.
- When no environment is specified, reuse this background, color temperature, camera language, and depth-of-field treatment across new characters in the series.
- The turnaround, five-view, expression, action, and detail sheets do not use the living-room scene. Use a clean, even warm-cream studio background with only the contact shadows required for clarity.

## Output organization

- In the `healing-plush` project, save every final output under the project root's `output/`; never leave the only final file in the image generator's default directory. Do not hard-code a particular user's absolute path. Locate the project root containing `skills/`, `docs/`, and `output/` from the current workspace.
- Save all six character images under `output/characters/`; storyboards under `output/storyboards/`; separated frames under `output/frames/`; and videos under `output/videos/`. Game-specific assets do not belong in this project unless the user names a separate game project and its asset directory.
- Use clear, stable English filenames: `<character>-plush.png`, `<character>-plush-turnaround.png`, `<character>-plush-five-view.png`, `<character>-plush-expressions.png`, `<character>-plush-actions.png`, and `<character>-plush-details.png`. Before a revision, rename the old version with `-v1`, `-v2`, and so on, then keep the approved current version at the stable filename.
- Keep final physical files only under the project's `output/` by default. If a generator-default reference must remain valid, use a link to the final file instead of keeping an indistinguishable duplicate.

## Generation workflow

1. Classify a new-character design as `stylized-concept` and use the built-in image-generation tool. For an existing character, explicitly preserve identity.
2. Inspect any existing prototypes in the conversation or project. For the same character, the prototype locks identity, proportions, facial features, attachments, color, and plush material; neither old action frames nor a new generation may silently replace it. For a new series character, use the closest recent series image only as a style reference: inherit rendering, proportion language, face treatment, and lighting without copying the original subject's anatomy or patterns.
3. Identify two to four indispensable features, such as strawberry seeds, pineapple quilting, or a tomato calyx. Soften sharp or hard structures into rounded short fur, quilting, or puffy construction while keeping the subject immediately recognizable.
4. Generate the character scene with explicit subject, environment, composition, light, palette, material, and constraints. Inspect the design, then use that scene as the direct reference for the new three-view prototype. If the user already specified a prototype, all outputs must reference it.
5. Generate the turnaround: front, strict right profile, and back in the same natural standing pose, scale, foot baseline, camera height, and soft light. Show the character fully from head to feet with equal columns, sufficient spacing, no cropping, and no overlap. Preserve head-to-body ratio, limb length, torso volume, crown or ear construction, colors, and fur density. Infer hidden structure only from the prototype; for a new undefined back, continue the front design simply without inventing tails, accessories, or patterns.
6. Use the turnaround prototype as the direct identity reference for the five-view, nine-expression, action-pose, and character-detail sheets. Repeat the identity invariants in every prompt: proportions, face shape, bean eyes, body color, head pattern, attachments, limb length, and plush material. Permit only the view, expression, pose, or detail-scale change required by the current sheet.
7. Review all six images together: recognizability, approved proportions, complete anatomy, natural fur and attachments, correct limb count, and no text or watermark. Confirm correct turnaround and five-view angles, an exact nine-panel expression grid, complete actions without proportion drift, and no contradictory structures in the detail sheet. Make only one targeted iteration for a failed critical requirement; if inconsistency remains, disclose it instead of calling the package approved.
8. Present and clearly distinguish all six outputs. Save them under `output/characters/` with the stable filenames. When a project character standard exists, record the prototype path. Future animation and proportion changes should reference the turnaround prototype; other sheets provide only the information indicated by their names.

## Character-scene prompt template

```text
Use case: stylized-concept
Asset type: square collectible plush character scene
Primary request: Turn [subject] into a cozy, cute plush character.
Reference role: [If a prototype exists, identify it as the source of identity, proportions, and material; other series images are style-only references.]
Scene/backdrop: cozy indoor living room; warm beige, cream, and honey wood; golden window light; a few softly blurred furnishings, cushions, or plants; character standing on a cream short-pile rug; shallow depth of field and rounded bokeh; quiet uncluttered background.
Subject: one character; [prototype proportions, or approximately 1:1 for a new character without a prototype]; large head, short rounded body, short limbs; preserve [defining features] as soft plush construction; subject color and pattern on the head only by default; uniform cream-white short-fur torso and limbs with no separate belly patch.
Style/medium: premium 3D family-animation-film character render, fine short fur and soft stray-fiber edges, huggable plush finish.
Composition/framing: square 1:1, full body centered at eye level, every limb visible.
Lighting/mood: warm soft key light from the upper-left rear or side-rear, soft highlights and subtle rim light, calm comforting mood.
Face: rounded warm-cream face, pure black bean eyes with tiny highlights, peach-pink blush, minimal mouth.
Constraints: immediately recognizable subject; attachments naturally connected to the head; cream-white body and limbs; one character; no text.
Avoid: subject color on the body or limbs, separate belly patch, watermark, logo, extra characters, sharp construction, aggression, plastic, clay, long limbs, cluttered background.
```

## Three-view turnaround prompt template

```text
Use case: identity-preserve
Asset type: plush character turnaround reference sheet
Primary request: Create front, strict right-profile, and back views of the exact same plush character from the reference; do not redesign it.
Reference role: [user-approved prototype, or the newly generated character scene] locks identity, proportions, color, and material; do not reproduce the scene background.
Scene/backdrop: clean even warm-cream studio background with only soft contact shadows and no props.
Composition/framing: approximately 2:1 landscape, three equal columns ordered front, strict right profile, and back; same natural standing pose, full body, scale, foot baseline, and eye-level camera; sufficient spacing; no labels or divider lines.
Identity/proportions: strictly preserve [observed head-to-body ratio, face shape, limb length, torso volume, and attachments]; only perspective and occlusion change. Follow the approved back design or continue a new character's front structure simply without inventing decoration.
Material/lighting: identical soft short fur, fluffiness, fiber detail, soft edges, color, and even warm-white light across all views.
Constraints: correct limb count and natural connections; true profile rather than three-quarter view; no front eyes or mouth on the back; no crop, overlap, extra characters, or watermark.
Avoid: proportion drift, long limbs, changed face or crown, plastic, clay, fur-density changes, dramatic light, clutter.
```

## Five-view prompt template

```text
Use case: identity-preserve
Asset type: plush character five-view model sheet
Primary request: Create five views of the exact same approved plush-character prototype without redesigning it.
Reference role: the approved turnaround prototype is the sole source for identity, proportions, construction, color, patterns, and material; the scene image provides mood only.
Scene/backdrop: clean even warm-cream studio background with soft contact shadows and no props.
Composition/framing: five equal landscape columns ordered front, front 45°, strict right profile, rear 45°, and back; full body, same natural pose, scale, foot baseline, and camera height; no labels or dividers.
Identity/proportions: preserve the prototype's head-to-body ratio, volume, limb length, face placement, head patterns, and attachments in every view; only the camera angle changes.
Constraints: EXACTLY 5 views; true side profile; rear 45° must not show an implausible full front face; no eyes or mouth on the back; no cropping, overlap, or watermark.
Avoid: missing or extra views, multiple designs, proportion drift, random pattern changes, contradictory left/right construction, long limbs, plastic or clay.
```

## Nine-expression prompt template

```text
Use case: identity-preserve
Asset type: plush character nine-expression sheet
Primary request: Create nine readable, gentle, social-media-ready expressions for the exact same approved plush character without changing the design.
Reference role: the approved turnaround locks identity, proportions, facial-feature style, color, patterns, attachments, and plush material.
Scene/backdrop: clean even warm-cream studio background; identical scale and lighting in every panel.
Layout: EXACTLY 9 equal panels in a strict 3 columns × 3 rows grid; thin uniform gutters; no merged, missing, extra, or inset panels.
Expressions: neutral, happy, eyes-closed laugh, surprised, worried or overthinking, mildly annoyed, sad, sleepy, and comforted; adapt to the approved personality while retaining nine clearly distinct emotions.
Identity/proportions: head-and-shoulders or upper-body framing; identical head size, face shape, and signature construction across all panels; express emotion only through bean-eye shape, minimal mouth, blush, slight head tilt, and gentle posture.
Constraints: pure black bean eyes by default; no white sclera, realistic teeth, or human lips; one character per panel; no text, labels, symbols, or watermark.
Avoid: multiple copies crowded into one panel, frightening or aggressive expressions, face drift, changing eye style, exaggerated human features, plastic or clay.
```

## Action-pose prompt template

```text
Use case: identity-preserve
Asset type: plush character action and pose sheet
Primary request: Create a clear, cute set of full-body animation-reference actions for the exact same approved plush character.
Reference role: the approved turnaround locks identity and body construction; actions may not alter head-to-body ratio, limb length, patterns, or attachments.
Scene/backdrop: clean even warm-cream studio background with separate breathing room and soft contact shadows for each pose; no narrative scene.
Composition/framing: strict 2×4 grid with eight full-body poses by default, such as neutral standing, walking, running, sitting, waving, thinking, careful interaction, and happy celebration; follow user-specified actions when provided.
Motion clarity: show action through weight, body tilt, short-limb swing, head direction, and subtle follow-through in attachments; every pose must be immediately readable, safe, and non-aggressive.
Constraints: one instance of the same character per panel; complete head-to-feet framing; plausible balance for grounded poses; soft landing logic for jumps; no text, numbering, or watermark.
Avoid: extra limbs, broken joints, stretched body, smaller head, white sclera, pattern drift, multiple characters per panel, dangerous action, plastic or clay.
```

## Character-detail prompt template

```text
Use case: identity-preserve
Asset type: plush character construction and detail sheet
Primary request: Create a character-detail sheet for the exact same approved plush prototype, documenting the visual construction that future artwork and animation must preserve.
Reference role: the approved turnaround is the sole structural source; close-ups explain existing design and never invent new design.
Scene/backdrop: clean even warm-cream studio background with soft even light and no scene props.
Composition/framing: clearly separated areas showing the complete front baseline, face and bean-eye close-up, signature head construction and patterns, hand/foot and body connections, strict side silhouette, rear construction, short-fur fibers, and seam treatment; no overlapping details.
Detail priorities: show the shapes, color boundaries, pattern-distribution logic, attachment layers, cream-white body rule, and short-fur material that must stay consistent; explain visually without text labels.
Constraints: every detail belongs to the same character; close-ups cannot change color, pattern, eyes, or material; no text, arrows, numbers, logos, or watermark.
Avoid: invented accessories, anatomy, or patterns, contradictory back construction, realistic anatomy, white sclera, hard plastic, smooth clay, or inconsistent fur density.
```

When the user explicitly specifies proportions, background, pose, color, expression, or output count, follow the user's request and retain only the non-conflicting series rules.
