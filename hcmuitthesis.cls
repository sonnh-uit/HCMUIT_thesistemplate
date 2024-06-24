% ========= Config paper and font =============
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcmuitthesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[14pt,a4paper]{memoir}
% ========== Require package to setup paper, link, language
\RequirePackage{anyfontsize,mathptmx}
\RequirePackage[T5]{fontenc}
\RequirePackage{geometry,graphicx,indentfirst,setspace}
\RequirePackage{tikz}
\RequirePackage[center]{caption}
\RequirePackage{fancyhdr,hyperref}
\RequirePackage[vietnamese,english]{babel}
\RequirePackage[utf8]{vietnam}
\RequirePackage{listings}
\RequirePackage{graphicx}
\RequirePackage{glossaries}
\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage{placeins}
\RequirePackage{amsfonts}
\RequirePackage{textcomp}
\RequirePackage{dblfloatfix}
\RequirePackage{lineno}
\RequirePackage{amssymb}
\RequirePackage{tabularx,booktabs}
\RequirePackage{longtable, lipsum}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{graphicx}
\RequirePackage{lscape}
\RequirePackage{caption}
\RequirePackage{hyperref}
\RequirePackage[sorting=nyt]{biblatex}
\RequirePackage{mathtools}
\RequirePackage{lipsum}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{makecell}
\RequirePackage{listings}
\RequirePackage{subcaption}
\RequirePackage{adjustbox}
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{rotating}
\RequirePackage[utf8]{inputenc}
\RequirePackage{background}
\usetikzlibrary{calc}

% Define color and column type
\hypersetup{urlcolor=blue,linkcolor=black,citecolor=black,colorlinks=true} 
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}
% Config figure path
\graphicspath{ {./graphics} }

% Define the desired distance from the top of the page
\newlength{\chaptertopmargin}
\setlength{\chaptertopmargin}{2cm} % Adjust the value as needed
\titlespacing*{\chapter}{0pt}{\chaptertopmargin}{20pt} % Adjust the second value for space before chapter titles


% Config for math in quantum computin
\DeclarePairedDelimiter\bra{\langle}{\rvert}
\DeclarePairedDelimiter\ket{\lvert}{\rangle}
\DeclarePairedDelimiterX\braket[2]{\langle}{\rangle}{#1 \delimsize\vert#2}

% Config listings 
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=fullflexible,
  basicstyle={\small\ttfamily},
  numbers=left,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
  tabsize=4
}

% ===========Set command to provide param ===========
\newcommand{\@upperuniname}{}
\newcommand{\upperuniname}[1]{\renewcommand{\@upperuniname}{#1}}
\newcommand{\@uniname}{}
\newcommand{\uniname}[1]{\renewcommand{\@uniname}{#1}}
\newcommand{\@deptname}{}
\newcommand{\deptname}[1]{\renewcommand{\@deptname}{#1}}
\newcommand{\@reporttype}{}
\newcommand{\reporttype}[1]{\renewcommand{\@reporttype}{#1}}
\newcommand{\@stumajor}{}
\newcommand{\stumajor}[1]{\renewcommand{\@stumajor}{#1}}
\newcommand{\@majorcode}{}
\newcommand{\majorcode}[1]{\renewcommand{\@majorcode}{#1}}
\newcommand{\@titleen}{}
\newcommand{\titleen}[1]{\renewcommand{\@titleen}{#1}}
\newcommand{\@defcouncil}{Council}
\newcommand{\defcouncil}[1]{\renewcommand{\@defcouncil}{#1}}
\newcommand{\@supervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}
\newcommand{\@supervisorname}{}
\newcommand{\supervisorname}[1]{\renewcommand{\@supervisorname}{#1}}
\newcommand{\@secretary}{Secretary}
\newcommand{\secretary}[1]{\renewcommand{\@secretary}{#1}}
\newcommand{\@instruction}{}
\newcommand{\instruction}[1]{\renewcommand{\@instruction}{#1}}
\newcommand{\@stuname}{}
\newcommand{\stuname}[1]{\renewcommand{\@stuname}{#1}}
\newcommand{\@stunamewithid}{}
\newcommand{\stunamewithid}[1]{\renewcommand{\@stunamewithid}{#1}}
\newcommand{\@reportplace}{}
\newcommand{\reportplace}[1]{\renewcommand{\@reportplace}{#1}}


% =========== Overwrite exist command to custom project ============
\renewcommand{\@title}{}
\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\large}{\fontsize{15}{15}\selectfont}
\renewcommand{\Large}{\fontsize{20}{20}\selectfont}
\renewcommand{\arraystretch}{1.2}
\renewcommand*{\lstlistingname}{Đoạn mã}
\renewcommand\lstlistlistingname{Danh sách đoạn mã}

\renewcommand*{\glossarysection}[2][]{%
  \chapter*{Danh sách các từ viết tắt}
  \addcontentsline{toc}{chapter}{Danh sách các từ viết tắt}
}


% ==========Setup paper margin and footer==========
\geometry{
  paper=a4paper,
  left=3cm,
  right=2cm,
  vmargin=2cm,
  includeheadfoot=true,
  headheight=30pt
}
\backgroundsetup{contents={}}
\OnehalfSpacing
\raggedbottom

% Set depth of numbering for sections and table of contents
\setsecnumdepth{subsection}
\settocdepth{subsection}

% Set numwidths
\setlength{\cfttablenumwidth}{3em}
\setlength{\cftfigurenumwidth}{3em}
\AtBeginDocument{\renewcommand*\bibname{References}}

% ==========Setup corlor for link and url==========
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=blue,
  urlcolor=blue
}

% ========== Start create cover page, fancy is package to draw line, paper..==========
\pagestyle{fancy}
\fancyhf{}

% first cover page
\def\coverpage{
  \pagestyle{empty}
  \large\bfseries
  \begin{tikzpicture}[remember picture,overlay]
    \draw[line width=3pt](
    $(current page.north west) + (3.0cm,-2.0cm)$
    ) rectangle (
    $(current page.south east) + (-2.0cm,2.0cm)$
    );
    \draw[line width=1pt](
    $(current page.north west) + (2.9cm,-1.9cm)$
    ) rectangle (
    $(current page.south east) + (-1.9cm,1.9cm)$
    );
  \end{tikzpicture}
  \vspace*{-3\baselineskip}
  \begin{center}
    \uppercase{\@upperuniname} \\
    \uppercase{\@uniname} \\
    \includegraphics[scale=0.3]{imgs/star.png}
    \vfill
    \includegraphics[scale=0.4]{imgs/UIT-logo.png}\\
    \vfill
    \uppercase{\@stuname}
    \vfill
    {\Large{\parbox[c]{0.8\linewidth}{\centering\@title}}} \\
    \vfill
    {\Large{\parbox[c]{0.8\linewidth}{\centering\@titleen}}}
    \vfill
    \uppercase{\@reporttype}\\
    \uppercase {\@stumajor} \\
    \vfill
    Mã số: \uppercase{\@majorcode} \\
    \vfill
    \uppercase{\@supervisor} \\
    \uppercase{\@supervisorname}
  \end{center}
  \vfill
  \vfill
  \mdseries
  \begin{center}
    \uppercase{\@reportplace \the\year{}}
  \end{center}
  \normalsize
  \cleardoublepage
  \pagestyle{fancy}
}


\def\mainthesis {
  
  \counterwithin{equation}{chapter}
  \counterwithin{table}{chapter}
  \counterwithin{figure}{chapter}
  \setcounter{secnumdepth}{3}
  \mainmatter
  % Config page header
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \include{chapters/main/summary.tex}
  \if @twoside
    \fancyhead[EL,OR]{\bfseries\nouppercase\rightmark}
  \else
    \fancyhead[R]{\bfseries\nouppercase\rightmark}
  \fi
  \backgroundsetup{
    contents=\includegraphics{imgs/UIT-logo.png},
    scale=1.5,
    opacity=0.1,
    angle=0  % Ensure the background image is not rotated
}
}