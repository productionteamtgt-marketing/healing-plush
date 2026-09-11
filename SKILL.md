---
name: healing-plush
description: Generate a consistent series of cozy, cute plush-doll character images from fruits, foods, plants, animals, or simple objects. Use when the user asks for a “治愈公仔”, a matching character in this established plush style, or a soft collectible mascot with button-like eyes and warm indoor lighting.
---

# 治愈公仔

使用内置图像生成工具创建单个、统一系列感的治愈系软绒公仔。用户给出主体后，保留其关键辨识特征，将其转化为可拥抱的毛绒角色；除非用户要求，不添加文字、道具或额外角色。

## 固定视觉语言

- 头身比约 1:1：头大，身体短圆，四肢短小圆润。
- 全身呈细腻柔软的短绒毛质感，蓬松、软糯，避免塑料感、黏土感和坚硬表面。
- 脸部为圆润暖米色；纯黑豆豆眼带微弱高光；淡粉橙腮红；极简小嘴；表情安静、温柔、无攻击性。
- 主体的标志性颜色和结构集中在大头造型上；果蒂、叶冠、耳朵等附属结构使用圆润的毛绒造型，并与头部自然连接。
- 使用低对比柔和配色、暖色室内柔光、轻微轮廓光、浅景深和柔和散景。
- 高品质三维家庭动画电影角色渲染，细腻毛发细节，温馨、可收藏、可拥抱。
- 默认 1:1 方形画幅、单角色、全身居中、平视，完整展示四肢。

## 生成流程

1. 将请求归类为 `stylized-concept`，使用内置图像生成工具。
2. 若对话中已有同系列图片且用户要求“类似风格”“同系列”或新增系列角色，将最近且最相关的一张图片作为“仅限风格参考”；继承渲染、比例、脸型、构图和灯光，不复制原主体的解剖或纹样。
3. 从用户指定主体提炼 2–4 个不可缺失的辨识特征，例如草莓籽、菠萝菱格、番茄果蒂。把尖锐或坚硬结构软化为圆润短绒、绗缝或蓬松结构，同时保持一眼可辨。
4. 在提示词中明确主体、场景、构图、灯光、色板、材质、约束与避免项；不擅自加入故事、品牌、文字或新角色。
5. 生成后检查：主体是否清晰可辨、头身比是否接近 1:1、全身是否完整、材质是否为短绒、附属结构是否连接自然、画面是否无文字和水印。若关键条件失败，只针对失败点迭代一次。

## 默认提示词骨架

```text
Use case: stylized-concept
Asset type: square collectible plush character concept
Primary request: 将【主体】设计为治愈系软萌公仔。
Scene/backdrop: 温馨室内背景，暖色柔光，浅景深，干净简洁。
Subject: 单个角色；头身比约 1:1；大头、短圆身体、短小四肢；保留【主体辨识特征】并将其柔软毛绒化。
Style/medium: 高品质三维家庭动画电影角色渲染，细腻短绒，软糯可拥抱。
Composition/framing: 1:1 方形，全身居中，平视，四肢完整。
Lighting/mood: 暖色柔光，轻微轮廓光，安静治愈。
Face: 暖米色圆脸，纯黑豆豆眼带微弱高光，粉橙腮红，极简小嘴。
Constraints: 主体一眼可辨；附属结构与头部自然连接；单角色；无文字。
Avoid: 水印、标志、额外角色、尖锐结构、攻击感、塑料感、黏土感、过长四肢、杂乱背景。
```

用户明确指定比例、背景、姿势、配色或表情时，以用户要求为准，只保留不冲突的系列视觉语言。
