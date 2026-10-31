\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lunwen}[2026/10/30 HIT Shenzhen Architecture master thesis]
% 本文件加载宏包和写作模式；字体见 ziti.tex，版式见 geshi.tex。
\LoadClass[UTF8,a4paper,zihao=-4,oneside,openany,fontset=none]{ctexbook}
\RequirePackage{fontspec}
\RequirePackage{amsmath,amssymb,unicode-math}
\input{\mulu muban/ziti.tex}
\RequirePackage{graphicx,booktabs,longtable,array,tabularx,multirow}
\RequirePackage{caption,subcaption}
\RequirePackage[section]{placeins}
\RequirePackage{fancyhdr,tocloft,enumitem}
\RequirePackage[backend=biber,style=wenxian,sorting=none,gbnamefmt=uppercase]{biblatex}
\RequirePackage[hidelinks,bookmarksnumbered,hypertexnames=false]{hyperref}
\pdfstringdefDisableCommands{\def\quad{ }}

\input{\mulu muban/geshi.tex}

% 写作层级：section 对应章，保留内部 chapter 计数供图表与公式使用。
\newcommand{\thesissectionmode}{%
\let\hitsubsection\section
\let\hitsubsubsection\subsection
\let\hitparagraph\subsubsection
\RenewDocumentCommand{\section}{s o m}{%
 \IfBooleanTF{##1}{\thesischapter{##3}}{%
  \IfNoValueTF{##2}{\chapter{##3}}{\chapter[##2]{##3}}}}
\let\subsection\hitsubsection
\let\subsubsection\hitsubsubsection
\let\paragraph\hitparagraph
}

% 本项目仅提供全文模式。
\thesissectionmode
