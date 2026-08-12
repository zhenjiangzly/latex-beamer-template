# HBUE Beamer 模板 — 湖北经济学院 LaTeX 演示文稿模板

> **Hubei University of Economics Beamer Presentation Template**

[![Version](https://img.shields.io/badge/version-v4.0-blue.svg)](./beamerthemeHBUE.sty)
[![License](https://img.shields.io/badge/license-LPPL%201.3c-green.svg)](https://www.latex-project.org/lppl/)
[![LaTeX](https://img.shields.io/badge/LaTeX-%E2%9C%93-008080.svg)](https://www.latex-project.org/)

---

## 📖 目录 / Contents

- [简介 / Introduction](#简介--introduction)
- [官方视觉依据 / Official Visual Identity](#官方视觉依据--official-visual-identity)
- [快速开始 / Quick Start](#快速开始--quick-start)
- [主题选项 / Theme Options](#主题选项--theme-options)
- [文件结构 / File Structure](#文件结构--file-structure)
- [自定义命令 / Custom Commands](#自定义命令--custom-commands)
- [校徽设置 / Logo Setup](#校徽设置--logo-setup)
- [常见问题 / FAQ](#常见问题--faq)
- [颜色参考 / Color Reference](#颜色参考--color-reference)
- [设计参考 / Design References](#设计参考--design-references)
- [致谢 / Acknowledgments](#致谢--acknowledgments)

---

## 简介 / Introduction

**HBUE Beamer 模板** 是为湖北经济学院 (Hubei University of Economics) 定制的 LaTeX Beamer 演示文稿模板。该模板遵循学校官方视觉元素（校徽"腾飞的经院"、校训、毛体校名），适用于:

- 🎓 本科/硕士/博士学位论文答辩
- 📊 学术会议报告
- 🏫 课堂教学课件
- 📝 项目汇报与展示
- 🎯 各类正式学术演示场合

### 模板特性

| 特性 | 说明 |
|------|------|
| **校徽红主色** | 默认主题采用校徽标准色 `#CA001D`，与校徽"腾飞的经院"完全一致 |
| **凤凰黄点缀** | 封面/章节页分隔线采用凤凰黄 `#FFF100`，呼应校徽配色 |
| **官网蓝可选** | `[blue]` 选项一键切换为学校官网主色 `#084B9D` |
| **三色块语义** | 普通块（主色）、示例块（绿）、警示块（金/红），语义清晰 |
| **深色模式** | `[dark]` 选项，适合暗光环境演示 |
| **指导教师** | `\supervisor` 命令在封面与页脚自动展示导师信息 |
| **章节进度条** | 章节过渡页底部显示迷你进度条（需编译两遍） |
| **零警告编译** | 全选项组合编译零 Warning、零 Overfull |

---

## 官方视觉依据 / Official Visual Identity

模板全部色彩取自学校官方素材实测值，非臆造:

| 要素 | 官方内容 | 模板采用 |
|------|----------|----------|
| **校徽** | "腾飞的经院"：圆形，凤凰图案，外圈英文/中文校名 | 校徽红 `#CA001D` 为主色 |
| **校徽配色** | "黄色的凤凰在红色的烈火中" | 凤凰黄 `#FFF100` 作点缀色 |
| **校名** | 毛泽东书法集字 | 封面使用 `hbue-logo-full.pdf` |
| **校训** | 厚德博学 · 经世济民（2006 年确定） | 封面/致谢页底部展示 |
| **官网 UI** | 官网页面主色 `#084B9D` | `[blue]` 选项主色 |

> 注: 旧版本中"学术蓝 RGB(0,70,140)"与"经世金 PANTONE 465C"的表述**无官方依据**，已移除并更正为校徽实测色。

---

## 快速开始 / Quick Start

### 环境要求

- **TeX 发行版**: TeX Live 2023+ 或 MiKTeX
- **编译引擎**: **XeLaTeX**（推荐）或 LuaLaTeX
- **在线编译**: [Overleaf](https://www.overleaf.com)（菜单 → Compiler → 选择 XeLaTeX）

### 本地编译

```bash
# 1. 编译演示文件（两遍, 用于生成章节进度条与总页数）
xelatex HBUE-demo.tex
xelatex HBUE-demo.tex

# 2. 如使用 BibTeX 参考文献
xelatex HBUE-demo.tex
bibtex HBUE-demo
xelatex HBUE-demo.tex
xelatex HBUE-demo.tex
```

### 最小工作示例

```latex
% !TEX program = xelatex
\documentclass[aspectratio=169,10pt,UTF8]{ctexbeamer}
\usetheme{HBUE}              % 校徽红主题
% \usetheme[blue]{HBUE}      % 官网蓝主题
% \usetheme[dark]{HBUE}      % 深色模式

\title{我的演示标题}
\subtitle{副标题}
\author{作者姓名}
\supervisor{指导教师姓名}     % 可选
\institute{湖北经济学院 \\ 学院名称}
\date{\today}

\begin{document}
  \begin{frame}[plain,noframenumbering]
    \titlepage
  \end{frame}

  \tocpage

  \section{第一节}
  \begin{frame}{第一页}
    你好,世界!
  \end{frame}

  \thankyoupage
\end{document}
```

---

## 主题选项 / Theme Options

```latex
% 默认: 校徽红 + 浅色模式 + 显示校徽
\usetheme{HBUE}

% 官网蓝主色 (校徽红降级为警示色)
\usetheme[blue]{HBUE}

% 深色模式 (深色背景, 适合暗光环境)
\usetheme[dark]{HBUE}

% 不显示校徽 (如暂无 logo 文件)
\usetheme[nologo]{HBUE}

% 选项可自由组合
\usetheme[blue,dark]{HBUE}
```

| 选项 | 说明 |
|------|------|
| *(默认)* | 校徽红主色，浅色模式 |
| `blue` | 官网蓝 `#084B9D` 主色 |
| `dark` | 深色背景模式 |
| `nologo` | 封面/页脚不加载校徽图片 |

### 推荐的文档类选项

```latex
\documentclass[
  aspectratio=169,  % 16:9 宽屏 (推荐) | 1610 | 149 | 54 | 43
  10pt,             % 字体大小: 8pt | 9pt | 10pt | 11pt | 12pt
  UTF8              % UTF-8 编码
]{ctexbeamer}
```

---

## 文件结构 / File Structure

```
hbue-beamer-template/
├── beamerthemeHBUE.sty    # 主题主文件 (包含全部定义)
├── HBUE-demo.tex          # 完整演示示例
├── README.md              # 本文件
└── figures/               # 图片资源目录
    ├── hbue-logo.pdf      # 校徽图标 PDF (页脚使用)
    ├── hbue-logo-full.pdf # 完整校名 Logo (封面使用)
    ├── HBUE-LOGO-with name-01.svg   # 完整 Logo 矢量源文件
    ├── hbue-logo-picture only.svg   # 图标矢量源文件
    └── convert-logo.ps1   # SVG → PDF 转换脚本 (需 Inkscape)
```

### 主题文件内部结构

`beamerthemeHBUE.sty` 按以下模块组织:

```latex
1. 选项处理      — dark / blue / nologo
2. 依赖包加载    — TikZ, graphicx, etoolbox (中文由 ctexbeamer 文档类负责)
3. 颜色定义      — 校徽官方实测色, Beamer 颜色映射
4. 字体设置      — 各级字体大小
5. 自定义命令    — \supervisor, \hl, \hlg, \hbue, \HBUE
6. 内部主题      — 标题页, 目录, 列表, 块, 定理
7. 外部主题      — 页眉, 帧标题, 页脚, 章节页, 致谢页
8. 杂项          — quote, hyperlink 配置
```

---

## 自定义命令 / Custom Commands

### 信息设置命令

| 命令 | 说明 |
|------|------|
| `\title[短标题]{完整标题}` | 设置演示文稿标题 |
| `\subtitle{副标题}` | 设置副标题 |
| `\author[短名称]{完整名称}` | 设置作者/汇报人 |
| `\supervisor{姓名 职称}` | 设置指导教师（封面与页脚自动显示，可选） |
| `\institute[短名称]{完整单位}` | 设置单位/学院 |
| `\date{日期}` | 设置日期 |

### 页面命令

| 命令 | 说明 |
|------|------|
| `\tocpage` | 生成目录页（仅显示节） |
| `\tocpagedetail` | 生成详细目录页（显示子节） |
| `\thankyoupage` | 生成致谢结束页 |

### 文本命令

| 命令 | 说明 | 示例 |
|------|------|------|
| `\hl{文字}` | 主色高亮 | `\hl{重点内容}` |
| `\hlg{文字}` | 金色高亮 | `\hlg{关键信息}` |
| `\hbue` | 中文校名 | `\hbue` → 湖北经济学院 |
| `\HBUE` | 英文校名 | `\HBUE` → Hubei University of Economics |

---

## 校徽设置 / Logo Setup

仓库 `figures/` 目录已内置校徽文件，开箱即用。如需更新/替换：

### 方法一: 重新转换 SVG（推荐）

```bash
# 安装 Inkscape 后运行转换脚本
winget install Inkscape.Inkscape
pwsh ./figures/convert-logo.ps1
```

### 方法二: 手动替换

1. 下载或制作矢量校徽（SVG/AI/PDF 均可）
2. 用 Inkscape/Illustrator 导出为 PDF
3. 替换 `figures/hbue-logo.pdf`（页脚图标）与 `figures/hbue-logo-full.pdf`（封面完整校名）

### 方法三: 暂时不显示校徽

编译时添加 `nologo` 选项:

```latex
\usetheme[nologo]{HBUE}
```

---

## 常见问题 / FAQ

### Q1: 编译报错 "File `ctexbeamer.cls' not found"

**A**: 需要安装完整版 TeX Live，或 MiKTeX 下安装 ctex 包:
```bash
tlmgr install ctex
```

### Q2: 中文不显示或显示为乱码

**A**:
1. 确认使用了 XeLaTeX 或 LuaLaTeX 编译
2. 确认 `.tex` 文件保存为 UTF-8 编码
3. 检查是否安装了中文字体（如微软雅黑 Microsoft YaHei，或 Noto Sans CJK SC）

### Q3: 章节页进度条不准确

**A**: 进度条依赖总章节数，需要**编译两遍**（第一遍生成辅助文件，第二遍正确显示）。

### Q4: 如何调整颜色?

**A**: 在导言区（preamble）重新定义颜色:
```latex
\definecolor{HBUEred}{RGB}{202,0,29}   % 修改此值
\usetheme{HBUE}
```
注意: 颜色定义必须在 `\usetheme{HBUE}` 之前。

### Q5: 如何在 Overleaf 上使用?

**A**: 上传 `beamerthemeHBUE.sty` 和 `figures/` 目录到项目根目录，在 Overleaf 菜单中将编译器设置为 **XeLaTeX**。需编译两遍。

### Q6: 如何自定义标题页?

**A**: 修改 `beamerthemeHBUE.sty` 中 `\defbeamertemplate*{title page}{HBUE}` 部分。

---

## 颜色参考 / Color Reference

### HBUE 官方色（主题默认）

| 颜色名称 | RGB | HEX | 说明 |
|----------|-----|-----|------|
| 校徽红 (HBUEred) | (202, 0, 29) | `#CA001D` | 主色，校徽"腾飞的经院"实测 |
| 校徽红深 (HBUEredDark) | (143, 0, 18) | `#8F0012` | 深色变体（封面标题） |
| 凤凰黄 (HBUEyellow) | (255, 241, 0) | `#FFF100` | 点缀色，仅作装饰短线 |
| 凤凰金 (HBUEgold) | (192, 138, 0) | `#C08A00` | 金色高亮/警示块的正文可用版 |
| 官网蓝 (HBUEblue) | (8, 75, 157) | `#084B9D` | `[blue]` 选项主色 |

### 色板预览

```
校徽红系列 (默认主色):
████████  HBUEred        #CA001D  — 主色
████████  HBUEredDark    #8F0012  — 深色
████████  HBUEredLight   #FAEBED  — 浅色背景

凤凰黄系列 (点缀):
████████  HBUEyellow     #FFF100  — 装饰用
████████  HBUEgold       #C08A00  — 高亮/警示
████████  HBUEgoldDark   #926800  — 警示块标题

官网蓝系列 ([blue] 选项):
████████  HBUEblue       #084B9D  — 主色
████████  HBUEblueDark   #05346E  — 深色
████████  HBUEblueLight  #E8F0FA  — 浅色背景
```

---

## 设计参考 / Design References

本模板在设计和实现过程中,深入研究了以下开源项目的最佳实践:

- [SJTUBeamer](https://github.com/sjtug/SJTUBeamer) — 上海交通大学 Beamer 模板
- [USTCBeamer](https://github.com/ustctug/ustcbeamer) — 中国科学技术大学 Beamer 模板
- [University-Presentation-Beamer](https://github.com/WQT1123/University-Presentation-Beamer) — 多校 Beamer 模板合集
- [metropolis](https://github.com/matze/mtheme) — 现代极简 Beamer 主题

---

## 致谢 / Acknowledgments

特别感谢湖北经济学院提供的官方视觉素材与"校名、校徽、校训"页面资料（[hbue.edu.cn/435](https://www.hbue.edu.cn/435/list.htm)），全部色彩均依据官方素材实测。

---

## 许可证 / License

本项目采用 [LPPL 1.3c](https://www.latex-project.org/lppl/) (LaTeX Project Public License) 许可证。

---

*厚德博学 · 经世济民*
