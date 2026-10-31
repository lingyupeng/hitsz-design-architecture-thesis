## 一键下载

[📦 下载模板 ZIP](https://github.com/lingyupeng/hitsz-design-architecture-thesis/archive/refs/heads/main.zip)

下载后可直接在 Overleaf 中选择 New Project → Upload Project 导入。
本模板不包含字体，请按下方教程补齐字体后编译。

# 建筑学院硕士学位论文 LaTeX 模板：main 全文模式

正文在一个 `main.tex` 中连续写，用 `\section` 分章；格式与字体设置集中管理。可用于 Overleaf，编译器选择 **XeLaTeX**。

**本仓库不含字体文件。首次使用必须先补齐字体，再编译。** `main.tex` 和 `example.tex` 共用同一套格式及字体，不需要分别安装两次。

## 1. 下载模板

GitHub 仓库页面点击绿色 **Code → Download ZIP**，将下载的 ZIP 解压。在解压后的文件夹里，应当直接看到 `main.tex`、`example.tex` 和 `muban/`。

## 2. 获取字体

需要5种字体、8个文件：宋体、黑体、楷体、Times New Roman的4种字形，以及Cambria Math。

### 获取途径

下面是获取入口及查找方法，不是仓库提供的字体下载包。你需要持有允许所需使用方式的授权，尤其是上传到Overleaf这类第三方服务器的授权；仅仅电脑装有字体，并不自动证明有该授权。许可说明集中见文末。

**Windows：查找已有字体或通过官方组件安装。**

1. 同时按 **Win + R**，输入 `C:\Windows\Fonts`，按回车。
2. 查找下表左列的字体。Times New Roman需要展开字体家族，找到4个字形。
3. 在有适用授权的前提下，将所需文件**复制**到一个新的本地文件夹再改名，不要移动或改名系统原文件。
4. 缺少黑体、楷体等中文字体时，在Windows设置中搜索“可选功能”，添加“简体中文补充字体 / Chinese (Simplified) Supplemental Fonts”；安装过程需联网。不同Windows版本的入口略有区别，按[微软安装说明](https://learn.microsoft.com/zh-cn/windows/deployment/windows-missing-fonts)操作。该官方组件不另行授予云端上传或再分发权。
5. 缺少其他字体时，从下面的字体官方详情页查看提供该字体的产品及授权渠道，不要将下载来的其他字体冒名替代。

**macOS：查找已有字体，或取得字体供应方提供的授权文件。**

1. 打开“字体册”，搜索下表的字体名称。
2. 找到后选中对应字体/字形，按[Apple说明](https://support.apple.com/guide/font-book/fntbk1014/mac)用“文件 → 导出”导出文件；菜单文字可能随macOS版本略有变化。
3. Times New Roman有时也可在Finder按 **Command + Shift + G**，输入 `/System/Library/Fonts/Supplemental/` 查找。
4. 某些Office版本随应用提供字体，可检查 `/Applications/Microsoft Word.app/Contents/Resources/DFonts/`。该目录是否存在、包含什么字体取决于安装版本。
5. Mac未必自带SimSun、SimHei、KaiTi或Cambria Math。缺少时使用下表官方渠道或学校已取得的适用授权，不要把“宋体-简”“黑体-简”等不同字体直接改名当成它们。

| 所需字体 | 官方详情及授权入口 |
| --- | --- |
| 宋体 SimSun | [Microsoft SimSun](https://learn.microsoft.com/en-us/typography/font-list/simsun) |
| 黑体 SimHei | [Microsoft SimHei](https://learn.microsoft.com/en-us/typography/font-list/simhei) |
| 楷体 KaiTi | [Microsoft KaiTi](https://learn.microsoft.com/en-us/typography/font-list/kaiti) |
| Times New Roman | [Microsoft Times New Roman](https://learn.microsoft.com/en-us/typography/font-list/times-new-roman) |
| Cambria Math | [Microsoft Cambria Math](https://learn.microsoft.com/en-us/typography/font-list/cambria-math) |

这些详情页列出字体来源、产品和授权渠道，**不保证提供独立免费下载按钮**。如果手头没有可用于目标环境的字体文件或许可，需要先获取相应授权；本模板不提供绕过这一步的字体包。

## 3. 按表重命名

在你复制出来的文件上操作，只修改文件名，不修改字体内部名称，也不转换字体格式。

Windows先在资源管理器的“查看 → 显示”中勾选“文件扩展名”；macOS可在Finder设置的“高级”中勾选“显示所有文件扩展名”。这样可以避免误改成 `heiti.ttf.ttf`。

| 实际字体/字形 | Windows常见原文件名 | Mac或其他发行版常见原文件名 | 改成的文件名 |
| --- | --- | --- | --- |
| SimSun 宋体集合 | `simsun.ttc` | 以实际获取的SimSun集合文件为准 | `songti.ttc` |
| SimHei 黑体 | `simhei.ttf` | 以实际获取的SimHei TTF为准 | `heiti.ttf` |
| KaiTi 楷体 | `simkai.ttf` | 以实际获取的KaiTi TTF为准 | `kaiti.ttf` |
| Times New Roman 常规 | `times.ttf` | `Times New Roman.ttf` | `yingwen-zhengti.ttf` |
| Times New Roman 粗体 | `timesbd.ttf` | `Times New Roman Bold.ttf` | `yingwen-cuti.ttf` |
| Times New Roman 斜体 | `timesi.ttf` | `Times New Roman Italic.ttf` | `yingwen-xieti.ttf` |
| Times New Roman 粗斜体 | `timesbi.ttf` | `Times New Roman Bold Italic.ttf` | `yingwen-cuxieti.ttf` |
| Cambria Math 独立TTF | 依发行版本而异 | `Cambria Math.ttf` | `shuxue.ttf` |

**数学字体另有一种常见情况：** Windows得到的是 `cambria.ttc`，而不是独立的 `Cambria Math.ttf`。如果该集合包含Cambria及Cambria Math，将其复制并改名为 **`shuxue.ttc`**，保持 `.ttc` 扩展名。模板会在没有 `shuxue.ttf` 时加载 `shuxue.ttc` 中通常位于索引1的Cambria Math。

`shuxue.ttf` 与 `shuxue.ttc` **二选一即可**，不需要同时准备。若供应方提供的集合排列不同，以其文件信息为准，在 `muban/ziti.tex` 的数学字体设置中调整 `FontIndex`；不要将普通Cambria当作Cambria Math。

不要将 `.ttc` 直接改成 `.ttf`。也不要将四份常规Times字体分别改名冒充粗体、斜体等字形。

## 4. 放进指定文件夹

将改名后的8个文件放进模板的 **`muban/ziti/`**，目录应如下：

```text
模板根目录/
├── main.tex
├── qianzhi.tex
├── houzhi.tex
├── wenxian.bib
├── example.tex
├── muban/
│   ├── lunwen.cls
│   ├── geshi.tex
│   ├── ziti.tex
│   └── ziti/
│       ├── songti.ttc
│       ├── heiti.ttf
│       ├── kaiti.ttf
│       ├── yingwen-zhengti.ttf
│       ├── yingwen-cuti.ttf
│       ├── yingwen-xieti.ttf
│       ├── yingwen-cuxieti.ttf
│       └── shuxue.ttf       或 shuxue.ttc，二选一
├── tupian/
└── shuoming/
```

无需在Overleaf“安装系统字体”，也无需修改 `main.tex` 或 `example.tex` 的字体代码。两个入口自动使用这里的同一套文件。

## 5. 导入Overleaf并编译

1. 在Overleaf点击 **New Project → Upload Project**，上传从GitHub下载的模板ZIP。
2. 左侧展开 `muban`，点击其下的 `ziti` 文件夹；如果上传工具没有保留这个空文件夹，先在 `muban` 下创建名为 `ziti` 的文件夹。
3. 通过Upload上传刚才准备好的8个字体文件。确认它们直接位于 `muban/ziti/`，不要再套一层 `ziti/`。
4. 打开项目的Menu/Settings，设置 **Compiler：XeLaTeX**；**Main document：main.tex**。TeX Live有2026版本可选时选择2026。
5. 点击 **Recompile**。首次编译需处理目录、文献和字体，耗时可能较长。
6. 查看格式案例时，将Main document临时改为 **example.tex**，再编译；写论文时切回 **main.tex**。

字体文件只留在你获准使用的本地/编译项目中，不要再上传到公开GitHub仓库或随Release ZIP分发。仓库的 `.gitignore` 会忽略常见字体扩展名；GitHub网页上传和手动制作ZIP不应依赖它自动过滤，发布前直接排除字体文件。

## 6. 开始写论文

| 要做的事 | 修改位置 |
| --- | --- |
| 写正文、结论、插图、表格和公式 | `main.tex` |
| 填题目、作者、导师、中英文摘要和关键词 | `qianzhi.tex` |
| 填成果、声明和致谢 | `houzhi.tex` |
| 添加正式参考文献 | `wenxian.bib` |
| 查看图片、表格、续表、公式及引用的写法 | `example.tex` |
| 放自己的图片 | `tupian/` |
| 调整固定格式 | `muban/geshi.tex`，日常写作通常不需要改 |

标题命令依次为 `\section`、`\subsection`、`\subsubsection`、`\paragraph`，对应第1章、1.1、1.1.1、1.1.1.1。全文无需拆成chapter文件。

## 7. 常见问题

| 报错/现象 | 处理方法 |
| --- | --- |
| 首次编译提示找不到 `songti.ttc` 等字体 | 先补齐 `muban/ziti/` 中的8个文件；未补字体无法正常编译 |
| 字体已上传仍提示找不到 | 核对完整文件名、大小写及目录；排除双重扩展名和多套一层文件夹 |
| 数学字体只有 `cambria.ttc` | 依第3步使用 `shuxue.ttc`，不要改成 `.ttf` |
| Times粗体/斜体不对 | 核对4份文件的实际字形，不要只改名字 |
| `unicode-math` 提示数学字体缺少MATH表 | 核对是否真正的Cambria Math；若使用TTC，核对集合中的字体索引 |
| 出现 `FontIndex` 或字体格式错误 | 实际文件类型/集合排列可能不同；按真实格式和字体信息设置，改扩展名不能转换格式 |
| 目录、图号或引用暂时显示 `??` | 在字体和文献错误解决后重新编译；不要删除交叉引用命令 |
| 更换格式后效果未更新 | 先确认选中的主文档，再使用Recompile菜单中的Recompile from scratch |

## 许可与来源

本仓库不分发第三方商业字体。系统/Office附带字体的使用、上传到服务器和字体文件再分发是不同的许可事项；按字体及来源产品的适用条款处理。字体嵌入PDF的许可也不等于分发独立TTF/TTC的许可。参见[微软字体许可说明](https://learn.microsoft.com/en-us/typography/fonts/font-faq)。

文献样式 `muban/wenxian.bbx`、`muban/wenxian.cbx` 来自[胡振震维护的biblatex-gb7714-2025](https://github.com/hushidong/biblatex-gb7714-2025)，按LPPL 1.3c或更新版本条款处理；文件已更名并调整ProvidesFile声明，保留原作者信息及原有许可。字体来源历史与进一步说明见 `shuoming/`。

## 已知限制

这是非官方模板，依据建筑学院2026版Word及指定PPT整理，仍需按学校最终要求核对。不同字体版本可能改变字宽和分页。示例文献部分为虚构排版案例，不能用作真实研究文献。仓库不包含使用者已有论文正文。当前本地内置预览环境缺少Biber；最近完整参考文献编译尚未在该内置环境完成验证。
