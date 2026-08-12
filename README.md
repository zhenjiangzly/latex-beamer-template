# HBUE Beamer 模板 — 湖北经济学院 LaTeX 演示文稿模板

> **Hubei University of Economics Beamer Presentation Template**

[![Version](https://img.shields.io/badge/version-v4.0-blue.svg)](./beamerthemeHBUE.sty)
[![License](https://img.shields.io/badge/license-LPPL%201.3c-green.svg)](https://www.latex-project.org/lppl/)
[![LaTeX](https://img.shields.io/badge/LaTeX-%E2%9C%93-008080.svg)](https://www.latex-project.org/)

---

 一个面向湖北经济学院（Hubei University of Economics, HBUE）的 LaTeX Beamer 演示文稿模板。

以学校官方视觉素材为基础，提供校徽红、官网蓝、深色模式等主题选项，并加入指导教师、章节进度条、目录页、致谢页等适合高校演示场景的功能。

## 📖 目录 / Contents

- [简介 / Introduction](#简介--introduction)
- [为什么会有这个项目 / Why I Made This](#为什么会有这个项目--why-i-made-this)
- [模板特性 / Features](#模板特性--features)
- [官方视觉依据 / Official Visual Identity](#官方视觉依据--official-visual-identity)
- [快速开始 / Quick Start](#快速开始--quick-start)
- [主题选项 / Theme Options](#主题选项--theme-options)
- [推荐文档类配置 / Recommended Document Class](#推荐文档类配置--recommended-document-class)
- [文件结构 / File Structure](#文件结构--file-structure)
- [自定义命令 / Custom Commands](#自定义命令--custom-commands)
- [校徽设置 / Logo Setup](#校徽设置--logo-setup)
- [常见问题 / FAQ](#常见问题--faq)
- [颜色参考 / Color Reference](#颜色参考--color-reference)
- [设计参考 / Design References](#设计参考--design-references)
- [项目小记 / Project Notes](#项目小记--project-notes)
- [致谢 / Acknowledgments](#致谢--acknowledgments)
- [许可证 / License](#许可证--license)

## 简介 / Introduction

**HBUE Beamer 模板** 是为湖北经济学院（Hubei University of Economics）定制的 LaTeX Beamer 演示文稿模板。

模板以学校官方视觉元素为设计基础，包括校徽“腾飞的经院”、校训以及学校官方视觉素材中的颜色，同时保留 Beamer 本身简洁、模块化、可定制的特点。

适用于：

- 🎓 本科 / 硕士 / 博士学位论文答辩
- 📊 学术会议报告
- 🏫 课堂教学课件
- 📝 课程作业与项目汇报
- 🏆 学科竞赛与答辩
- 🎯 其他正式学术演示场合

### 模板特性 / Features

| 特性           | 说明                                                         |
| -------------- | ------------------------------------------------------------ |
| **校徽红主色** | 默认主题采用校徽标准色 `#CA001D`，对应校徽“腾飞的经院”视觉中的主要红色 |
| **凤凰黄点缀** | 封面、章节页等位置使用凤凰黄 `#FFF100` 作为装饰色            |
| **官网蓝主题** | `[blue]` 选项可一键切换为学校官网主色 `#084B9D`              |
| **深色模式**   | `[dark]` 选项提供适合暗光环境的深色演示主题                  |
| **三色块语义** | 普通块、示例块、警示块采用不同颜色，帮助区分信息层级         |
| **指导教师**   | 提供 `\supervisor` 命令，在封面及页脚自动显示指导教师信息    |
| **章节进度条** | 章节过渡页底部显示迷你进度条                                 |
| **目录页**     | 支持普通目录与详细目录两种形式                               |
| **致谢页面**   | 提供独立的 `\thankyoupage` 结束页面                          |
| **校徽开关**   | 支持 `nologo` 选项，在没有 Logo 文件时关闭校徽               |
| **中文支持**   | 基于 `ctexbeamer`，适合中文演示文稿                          |
| **零警告目标** | 主题开发过程中尽可能处理 Warning 与 Overfull 问题            |

## 为什么会有这个项目 / Why I Made This

这个项目其实始于一个很简单的问题：

> **“湖北经济学院有没有一个好用的 LaTeX Beamer 模板？”**

在第一次认真使用 LaTeX 制作演示文稿时，我发现网上已经有很多非常优秀的高校 Beamer 模板，从上海交通大学、中国科学技术大学到各种现代化 Beamer 主题，都有成熟的开源项目。

但我很难找到一个真正属于**湖北经济学院**、又能够直接拿来使用的模板。

于是我想：

> **既然没有，那就自己做一个。**

最开始，我其实只想解决几个很简单的问题：

- 把学校校徽放进 Beamer；
- 用学校自己的颜色；
- 做一个看起来像“湖北经济学院”的封面。

但真正开始做以后，问题很快变多了。

校徽到底应该用什么颜色？

学校的红色和官网的蓝色应该如何区分？

章节页应该是什么样子？

导师信息能不能自动显示？

如果做汇报的时候是在昏暗的教室里，能不能有一个深色模式？

如果别人暂时没有校徽文件，能不能直接关闭 Logo？

于是，一个原本可能只是几十行代码的小模板，慢慢变成了现在这个项目。

我也顺手重新核对了学校官方视觉素材中的颜色，把一些网上流传、但缺少明确官方依据的“校色”表述删除或更正，并尽量让模板同时满足两个目标：

> **看起来像湖北经济学院。**

以及：

> **真正能够拿来做 PPT。**

所以，这不只是一个 Beamer 模板。

它更像是我给自己的学校做的一件很小的事情——把“我觉得应该有一个这样的东西”，变成“那我就自己做一个”。

如果以后有另一个湖北经济学院的同学因为这个仓库，少花一个晚上折腾 LaTeX，多花一点时间准备自己的汇报，那么我会觉得这个项目已经完成了它最初的意义。

> **厚德博学 · 经世济民**
>
> *Made by a student of Hubei University of Economics, for anyone who wants to put a little bit of HBUE into their slides.*

## 模板特性 / Features

### 🎨 学校视觉风格

默认使用学校校徽中的红色作为主题主色，并使用凤凰黄作为装饰色。

同时提供官网蓝主题，以适应不同演示场景。

### 🌙 深色模式

通过简单的主题选项即可切换深色背景：

```
\usetheme[dark]{HBUE}
```

适合：

- 教室投影
- 暗光环境
- 晚间演示
- 个人偏好深色主题的用户

### 👨‍🏫 指导教师

通过一个命令设置指导教师：

```
\supervisor{张三 教授}
```

模板会自动在封面和页脚展示相关信息。

### 📈 章节进度条

章节过渡页底部提供迷你进度条，用于显示当前演示在整体内容中的位置。

> 该功能需要至少编译两遍，以便 LaTeX 获得完整的章节信息。

### 🧩 模块化设计

主题文件内部按照功能进行组织，包括：

```
选项处理
颜色系统
字体设置
自定义命令
标题页
目录
列表
定理与块
页眉
页脚
章节页
致谢页
杂项配置
```

用户可以直接修改 `beamerthemeHBUE.sty`，也可以在自己的 `.tex` 文件中进行进一步覆盖。

## 官方视觉依据 / Official Visual Identity

模板中的主要视觉元素尽量依据湖北经济学院官方视觉素材，而不是单纯使用网络上流传的“学校配色”。

| 要素         | 官方内容                                     | 模板采用                 |
| ------------ | -------------------------------------------- | ------------------------ |
| **校徽**     | “腾飞的经院”：圆形校徽、凤凰图案及中英文校名 | 用于封面与页脚           |
| **校徽配色** | 黄色凤凰与红色主体                           | 凤凰黄 + 校徽红          |
| **校名**     | 毛体书法集字                                 | 封面使用完整校名 Logo    |
| **校训**     | 厚德博学 · 经世济民                          | 用于结束页及相关视觉区域 |
| **官网 UI**  | 学校官网主色                                 | 提供 `[blue]` 主题       |

### 关于颜色的一点说明

旧版本中曾使用过一些“学术蓝”“经世金”等网络资料中的名称，但在整理项目时发现，其中部分说法缺乏明确的官方来源。

因此，目前版本采取更保守的方式：

> **能够从学校官方视觉素材中直接得到或测量的颜色，才作为模板的主要视觉依据。**

所以：

- `HBUEred` 用于学校校徽红；
- `HBUEyellow` 用于凤凰黄；
- `HBUEblue` 用于官网蓝。

# 快速开始 / Quick Start

## 环境要求

推荐使用：

- **TeX 发行版**：TeX Live 2023+ 或 MiKTeX
- **编译引擎**：**XeLaTeX**（推荐）或 LuaLaTeX
- **在线编译**：[Overleaf](https://www.overleaf.com)

## 本地编译

最简单的方式：

```
xelatex HBUE-demo.tex
xelatex HBUE-demo.tex
```

模板中的章节进度条及部分总页数信息依赖辅助文件，因此通常需要至少编译两遍。

## 使用 BibTeX

如果项目使用 BibTeX：

```
xelatex HBUE-demo.tex
bibtex HBUE-demo
xelatex HBUE-demo.tex
xelatex HBUE-demo.tex
```

## 最小工作示例

```
% !TEX program = xelatex

\documentclass[
  aspectratio=169,
  10pt,
  UTF8
]{ctexbeamer}

\usetheme{HBUE}

% \usetheme[blue]{HBUE}
% \usetheme[dark]{HBUE}
% \usetheme[nologo]{HBUE}

\title{我的演示标题}
\subtitle{副标题}

\author{作者姓名}

\supervisor{指导教师姓名}

\institute{湖北经济学院 \\ 学院名称}

\date{\today}

\begin{document}

% 封面
\begin{frame}[plain,noframenumbering]
  \titlepage
\end{frame}

% 目录
\tocpage

\section{第一节}

\begin{frame}{第一页}

你好，世界！

\end{frame}

\thankyoupage

\end{document}
```

# 主题选项 / Theme Options

## 默认主题

```
\usetheme{HBUE}
```

默认配置：

```
校徽红 + 浅色模式 + 显示校徽
```

## 官网蓝

```
\usetheme[blue]{HBUE}
```

使用官网蓝 `#084B9D` 作为主色。

## 深色模式

```
\usetheme[dark]{HBUE}
```

使用深色背景，适合暗光环境投影。

## 不显示校徽

```
\usetheme[nologo]{HBUE}
```

适用于：

- 暂时没有 Logo 文件；
- 不希望展示校徽；
- 需要进一步自定义封面。

## 组合选项

主题选项可以组合：

```
\usetheme[blue,dark]{HBUE}
```

例如：

```
\usetheme[blue,nologo]{HBUE}
```

表示：

> 官网蓝 + 不显示校徽。

# 推荐文档类配置 / Recommended Document Class

推荐使用：

```
\documentclass[
  aspectratio=169,  % 16:9 宽屏
  10pt,             % 默认字号
  UTF8
]{ctexbeamer}
```

### 宽高比

常见选项包括：

```
169
1610
149
54
43
```

推荐：

```
aspectratio=169
```

即：

> **16:9 宽屏**

目前绝大多数电脑、投影设备以及在线会议环境都更适合这一比例。

# 文件结构 / File Structure

```
hbue-beamer-template/
├── beamerthemeHBUE.sty
├── HBUE-demo.tex
├── README.md
└── figures/
    ├── hbue-logo.pdf
    ├── hbue-logo-full.pdf
    ├── HBUE-LOGO-with name-01.svg
    ├── hbue-logo-picture only.svg
    └── convert-logo.ps1
```

## 文件说明

| 文件                  | 用途                    |
| --------------------- | ----------------------- |
| `beamerthemeHBUE.sty` | Beamer 主题核心文件     |
| `HBUE-demo.tex`       | 完整使用示例            |
| `README.md`           | 项目说明文档            |
| `hbue-logo.pdf`       | 页脚使用的校徽图标      |
| `hbue-logo-full.pdf`  | 封面使用的完整校名 Logo |
| `*.svg`               | 原始矢量 Logo           |
| `convert-logo.ps1`    | SVG → PDF 转换脚本      |

## 主题文件内部结构

`beamerthemeHBUE.sty` 按以下模块组织：

```
1. 选项处理
   ├── dark
   ├── blue
   └── nologo

2. 依赖包加载
   ├── TikZ
   ├── graphicx
   └── etoolbox

3. 颜色定义
   ├── HBUEred
   ├── HBUEyellow
   ├── HBUEgold
   └── HBUEblue

4. 字体设置

5. 自定义命令
   ├── \supervisor
   ├── \hl
   ├── \hlg
   ├── \hbue
   └── \HBUE

6. 内部主题
   ├── 标题页
   ├── 目录
   ├── 列表
   ├── 块
   └── 定理

7. 外部主题
   ├── 页眉
   ├── 帧标题
   ├── 页脚
   ├── 章节页
   └── 致谢页

8. 其他配置
   ├── quote
   └── hyperlink
```

# 自定义命令 / Custom Commands

## 信息设置命令

| 命令                           | 说明             |
| ------------------------------ | ---------------- |
| `\title[短标题]{完整标题}`     | 设置演示文稿标题 |
| `\subtitle{副标题}`            | 设置副标题       |
| `\author[短名称]{完整名称}`    | 设置作者/汇报人  |
| `\supervisor{姓名 职称}`       | 设置指导教师     |
| `\institute[短名称]{完整单位}` | 设置单位/学院    |
| `\date{日期}`                  | 设置日期         |

## 页面命令

| 命令             | 说明                     |
| ---------------- | ------------------------ |
| `\tocpage`       | 生成普通目录页，仅显示节 |
| `\tocpagedetail` | 生成详细目录页，显示子节 |
| `\thankyoupage`  | 生成结束致谢页           |

## 文本命令

| 命令         | 说明         | 示例             |
| ------------ | ------------ | ---------------- |
| `\hl{文字}`  | 使用主色高亮 | `\hl{重点内容}`  |
| `\hlg{文字}` | 使用金色高亮 | `\hlg{关键信息}` |
| `\hbue`      | 输出中文校名 | `\hbue`          |
| `\HBUE`      | 输出英文校名 | `\HBUE`          |

# 校徽设置 / Logo Setup

仓库已经在 `figures/` 目录中提供相应校徽文件，默认情况下可以直接使用。

## 方法一：重新转换 SVG

推荐使用 Inkscape 将矢量 SVG 转换为 PDF。

例如 Windows 下：

```
winget install Inkscape.Inkscape
```

然后：

```
pwsh ./figures/convert-logo.ps1
```

## 方法二：手动替换

也可以自行制作或更新 Logo：

1. 下载或制作矢量校徽；
2. 使用 Inkscape / Illustrator 等工具导出 PDF；
3. 替换：

```
figures/hbue-logo.pdf
figures/hbue-logo-full.pdf
```

分别对应：

```
hbue-logo.pdf
→ 页脚校徽

hbue-logo-full.pdf
→ 封面完整校名 Logo
```

## 方法三：关闭校徽

如果暂时没有 Logo 文件，可以使用：

```
\usetheme[nologo]{HBUE}
```

# 常见问题 / FAQ

## Q1：编译报错 `File 'ctexbeamer.cls' not found`

需要安装相应的中文 LaTeX 支持。

TeX Live 可以尝试：

```
tlmgr install ctex
```

如果使用 MiKTeX，则可以通过 MiKTeX Console 安装相应宏包。

## Q2：中文无法显示或出现乱码

请检查：

1. 是否使用 XeLaTeX 或 LuaLaTeX；
2. `.tex` 文件是否保存为 UTF-8；
3. 系统是否安装可用的中文字体。

例如：

```
Microsoft YaHei
Noto Sans CJK SC
```

## Q3：章节进度条不准确

章节进度条依赖辅助文件。

请至少编译两遍：

```
xelatex HBUE-demo.tex
xelatex HBUE-demo.tex
```

第一次生成辅助信息，第二次使用这些信息完成排版。

## Q4：如何修改颜色？

可以在：

```
\usetheme{HBUE}
```

之前重新定义颜色：

```
\definecolor{HBUEred}{RGB}{202,0,29}
```

例如：

```
\definecolor{HBUEred}{RGB}{180,0,20}
\usetheme{HBUE}
```

> 注意：颜色覆盖必须发生在主题定义最终生效之前。

## Q5：如何在 Overleaf 上使用？

上传：

```
beamerthemeHBUE.sty
```

以及：

```
figures/
```

目录。

然后在 Overleaf：

```
Menu → Compiler → XeLaTeX
```

选择 **XeLaTeX**。

之后编译项目即可。

## Q6：如何自定义标题页？

可以修改：

```
\defbeamertemplate*{title page}{HBUE}
```

所在部分。

通常位于：

```
beamerthemeHBUE.sty
```

主题文件中。

如果只是希望对某一个项目修改，也可以在自己的 `.tex` 文件中重新定义相关 Beamer template，而不直接修改主题源码。

# 颜色参考 / Color Reference

## HBUE 官方视觉色

| 颜色名称          | RGB             | HEX       | 说明                 |
| ----------------- | --------------- | --------- | -------------------- |
| **HBUEred**       | `(202, 0, 29)`  | `#CA001D` | 默认主题主色         |
| **HBUEredDark**   | `(143, 0, 18)`  | `#8F0012` | 深色变体             |
| **HBUEredLight**  | —               | `#FAEBED` | 浅色背景             |
| **HBUEyellow**    | `(255, 241, 0)` | `#FFF100` | 凤凰黄，主要用于装饰 |
| **HBUEgold**      | `(192, 138, 0)` | `#C08A00` | 金色高亮/警示        |
| **HBUEgoldDark**  | `(146, 104, 0)` | `#926800` | 深色警示             |
| **HBUEblue**      | `(8, 75, 157)`  | `#084B9D` | 官网蓝               |
| **HBUEblueDark**  | —               | `#05346E` | 官网蓝深色变体       |
| **HBUEblueLight** | —               | `#E8F0FA` | 官网蓝浅色背景       |

## 色板预览

| 颜色名称 | 色块 | 色值 |
| :--- | :--- | :--- |
| HBUEred | <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='20'%3E%3Crect width='40' height='20' fill='%23CA001D'/%3E%3C/svg%3E" alt="" /> | `#CA001D` |
| HBUEredDark | <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='20'%3E%3Crect width='40' height='20' fill='%238F0012'/%3E%3C/svg%3E" alt="" /> | `#8F0012` |
| HBUEredLight | <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='20'%3E%3Crect width='40' height='20' fill='%23FAEBED' stroke='%23cccccc'/%3E%3C/svg%3E" alt="" /> | `#FAEBED` |
# 设计参考 / Design References

本项目在设计和实现过程中参考了以下开源项目：

### SJTUBeamer

https://github.com/sjtug/SJTUBeamer

上海交通大学 Beamer 模板。

主要参考其高校主题项目的组织方式及使用体验。

### USTCBeamer

https://github.com/ustctug/ustcbeamer

中国科学技术大学 Beamer 模板。

### University-Presentation-Beamer

https://github.com/WQT1123/University-Presentation-Beamer

多高校 Beamer 模板集合。

### metropolis

https://github.com/matze/mtheme

现代化、极简风格的 Beamer 主题。

# 项目小记 / Project Notes

这个模板并不是一开始就长现在这个样子。

## “先让它能用”

最开始的想法非常简单：

> **做一个湖北经济学院自己的 Beamer 模板。**

于是先把校徽、学校名称、基本颜色以及标题页放进去。

那时候的目标甚至不是“做好”，而只是：

> **至少能正常编译。**

## “等等，学校到底是什么颜色？”

做到颜色的时候，我发现事情没有想象中那么简单。

网上能够找到不少关于湖北经济学院颜色的说法，但其中一些缺少明确的官方依据。

所以最后干脆回到学校自己的官方视觉素材，从校徽本身重新取色。

也正因为这样，后来模板中的：

```
HBUEred
HBUEyellow
```

才有了现在的具体数值。

## “既然都做到这里了……”

接下来开始不断出现一些原本没有计划的功能：

```
\supervisor
章节进度条
目录页
详细目录页
致谢页
官网蓝主题
深色模式
nologo
Logo 矢量化
颜色系统
更完整的中文支持
```

每加一个功能，主题文件会多一点，README 也会长一点。

于是最初那个“简单做个模板”的想法，就慢慢变成了现在这个项目。

## 我希望它最后是什么样子？

我并不特别希望这个仓库变成一个庞大的 LaTeX 框架。

它更适合保持一种很朴素的定位：

> **如果你是湖北经济学院的学生，需要做一个正式的 PPT，又刚好喜欢 LaTeX，那么这里应该可以直接帮你开始。**

不需要重新设计校徽。

不需要重新找颜色。

不需要从零开始写 Beamer 主题。

Clone 下来，改标题，开始写内容。

就这么简单。

## 一个很小的愿望

如果你是湖北经济学院的同学，并且正在使用这个模板：

欢迎 Star，也欢迎提出 Issue。

如果发现了 Bug，可以告诉我；

如果觉得某个页面不好看，也可以告诉我；

如果有特别想加入的功能，也可以提出建议。

因为这个项目最开始，本来就是因为我觉得：

> **“学校应该有一个这样的东西。”**

所以如果最后它真的变成了一个大家都能够使用的东西，那就已经很好了。

# 致谢 / Acknowledgments

特别感谢湖北经济学院提供的官方视觉素材以及学校官方网站相关资料。

本项目所使用的学校视觉元素主要参考：

- 学校官方校徽；
- 学校官方校名视觉素材；
- 学校官方校训；
- 学校官方网站相关视觉元素。

官方资料：

[湖北经济学院](https://www.hbue.edu.cn/)

相关学校视觉资料页面：

https://www.hbue.edu.cn/435/list.htm

同时感谢所有开源 Beamer 项目及 LaTeX 社区。

如果没有前人的开源工作，这个模板也不会这么容易从一个想法变成一个真正可以工作的项目。

# 许可证 / License

本项目采用：

**LaTeX Project Public License 1.3c（LPPL 1.3c）**

许可证详情：

https://www.latex-project.org/lppl/

# 🌟 最后

如果这个模板帮你少折腾了几个小时的 LaTeX，那么它就已经完成了它最初的任务。

如果你最后用它做出了一个很漂亮的 PPT，那就更好了。

> **厚德博学 · 经世济民**
>
> *One small template for HBUE,*
> *one less thing to worry about before the presentation.*
>
> **© 2026 Hubei University of Economics Beamer Template**
