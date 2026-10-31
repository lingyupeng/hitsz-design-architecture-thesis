# main全文模式

首次使用先按根目录README.md获取并补齐字体，再将本ZIP上传为新的Overleaf项目。Menu/Settings中选择Main document为main.tex，Compiler为XeLaTeX，TeX Live为2026（如可选）。

正文与结论在main.tex中连续填写；论文信息、中英文摘要和目录在qianzhi.tex；参考文献输出、成果、声明和致谢在houzhi.tex。标题用\section、\subsection、\subsubsection、\paragraph，分别对应一至四级；不编号标题用\section*。不需要写\chapter或选择模式。

main.tex：正文及结论，加载前置和后置文件。
qianzhi.tex：论文信息、封面、摘要和目录。
houzhi.tex：参考文献输出、成果、声明和致谢。
example.tex：独立格式案例，预览时临时切换Main document，之后切回main.tex。
wenxian.bib：正式参考文献；muban/example-wenxian.bib：虚构的格式演示文献。
tupian/：论文图片；muban/ziti/：使用者自行补齐的字体目录；muban/ziti.tex：字体设置。
muban/geshi.tex：集中设置页面、标题、图表、摘要、文献及声明格式。
muban/lunwen.cls：加载宏包和全文层级映射。

本版合入：章标题段前1行/段后0.8行；二、三、四级标题段前/段后各0.5行，磅值按现有行高近似换算；二至四级标题页首不额外保留段前空白，按Word截图靠近双线；页中仍保留半行段前/段后；续表使用右对齐标题及上方留白。保持现有字体、正文行距、页眉上粗下细双线和三线表线宽。

这是基于本地模板的新项目包，main.tex中是示例文字，不包含你在线上项目后来新增的正文。迁移时复制你现有的正文内容、论文信息及实际文献和图片即可。不要用旧版geshi.tex或lunwen.cls覆盖此包。

## 已知问题

Word间距参照曾使用LibreOffice导出，尚未完成Microsoft Word原生PDF逐页复核。之前指定的优秀论文复杂页面尚未全部完成逐页视觉验收。字体来源和授权说明见shuoming/中的字体说明文件；文献样式基于biblatex-gb7714-2025，按LPPL许可保留。

## 内容与格式分工

main.tex填写正文及图表；qianzhi.tex填写前置内容；houzhi.tex填写后置内容；geshi.tex集中定义排版。第07节封装英文摘要、结论标题、成果标题、声明正文缩进及签名间距。字体由ziti.tex管理，lunwen.cls自动加载这些设置，main.tex无需再次input。图表环境、图片宽度、表格列定义和数学公式仍随相应内容书写。

## 文件夹分工

根目录只保留main.tex、qianzhi.tex、houzhi.tex、wenxian.bib和example.tex，均为写作时使用的入口。图片放tupian/。
muban/保存固定格式、字体设置、文献样式和案例文献库；字体文件不随仓库分发，日常写作无需修改。
shuoming/集中保存本说明以及字体来源与许可说明。
Overleaf主文档仍选main.tex，编译器选XeLaTeX；示例预览临时选择example.tex。

## 图文间距

muban/geshi.tex第03节统一控制与正文的外部间距。当前正文基线21.1bp，半行折合10.55bp，约3.72mm。

- 前一段正文到图片：10.55bp。
- 图题到后一段正文：10.55bp。
- 前一段正文到表题：10.55bp。
- 表格到后一段正文：10.55bp。

普通figure/table使用textfloatsep、intextsep；跨页longtable另用LTpre、LTpost，均设10.55bp。图片和图题、表题和表格的内部间距仍为4bp，不属于上述四处。半行是附加排版间距，不是文字墨迹边界的精确距离；页首、页末及浮动页的留白还受分页影响。
