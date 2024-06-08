\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcmuit-thesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{memoir}

% Require package
\RequirePackage{anyfontsize,mathptmx}
\RequirePackage[T5]{fontenc}
\RequirePackage{geometry,graphicx,indentfirst,setspace}
\RequirePackage{tikz}
\RequirePackage[center]{caption}
\RequirePackage{fancyhdr,hyperref}
\hypersetup{urlcolor=blue,linkcolor=black,citecolor=black,colorlinks=true} 
\RequirePackage[vietnamese,english]{babel}

% Set command to provide param 
\newcommand{\@upperuniname}{}
\newcommand{\upperuniname}[1]{\renewcommand{\@upperuniname}{#1}}
\newcommand{\@uniname}{}
\newcommand{\uniname}[1]{\renewcommand{\@uniname}{#1}}
\newcommand{\@deptname}{}
\newcommand{\deptname}[1]{\renewcommand{\@deptname}{#1}}
\newcommand{\@reporttype}{ĐỒ ÁN CHUYÊN NGÀNH}
\newcommand{\reporttype}[1]{\renewcommand{\@reporttype}{#1}}
\newcommand{\@stumajor}{}
\newcommand{\stumajor}[1]{\renewcommand{\@stumajor}{#1}}
\renewcommand{\@title}{}
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
\newcommand{\@instruction}{GIẢNG VIÊN HƯỚNG DẪN}
\newcommand{\instruction}[1]{\renewcommand{\@instruction}{#1}}
\newcommand{\@stuname}{}
\newcommand{\stuname}[1]{\renewcommand{\@stuname}{#1}}
\newcommand{\@stunamewithid}{}
\newcommand{\stunamewithid}[1]{\renewcommand{\@stunamewithid}{#1}}
\newcommand{\@reportplace}{TP. HỒ CHÍ MINH}
\newcommand{\reportplace}[1]{\renewcommand{\@reportplace}{#1}}
\newcommand{\@reporttime}{}
\newcommand{\reporttime}[1]{\renewcommand{\@reporttime}{#1}}


\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\large}{\fontsize{15}{15}\selectfont}
\renewcommand{\Large}{\fontsize{20}{20}\selectfont}
\renewcommand{\arraystretch}{1.2}
\usetikzlibrary{calc}
\geometry{
  paper=a4paper,
  left=3cm,
  right=2cm,
  vmargin=2cm,
  includeheadfoot=true,
  headheight=30pt
}
\OnehalfSpacing
\raggedbottom

% Set depth of numbering for sections and table of contents
\setsecnumdepth{subsection}
\settocdepth{subsection}

% Set numwidths
\setlength{\cfttablenumwidth}{3em}
\setlength{\cftfigurenumwidth}{3em}
\AtBeginDocument{\renewcommand*\bibname{References}}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=blue,
  urlcolor=blue
}

\pagestyle{fancy}
\fancyhf{}

%Second Cover page
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
    \uppercase{\@deptname} \\
    \vfill
    \uppercase{\@stunamewithid}
    \vfill
    \uppercase{\@reporttype}
    \vfill
    {\Large{\parbox[c]{0.8\linewidth}{\centering\@title}}} \\
    \vfill
    {\Large{\parbox[c]{0.8\linewidth}{\centering\@titleen}}}
    \vfill
    \uppercase{\@supervisor} \\
    \uppercase{\@supervisorname}
  \end{center}
  \vfill
  \vfill
  \mdseries
  \begin{center}
    \uppercase{\@reportplace, \@reporttime}
  \end{center}
  \normalsize
  \cleardoublepage
  \pagestyle{fancy}
}

\providecommand{\phantomsection}{}
\newenvironment{preface}[1]{
  \vspace*{\stretch{2}}
  {\noindent \bfseries \Huge \#1}
  \begin{center}
    \thispagestyle{plain}
    \phantomsection \addcontentsline{toc}{chapter}{\#1}
  \end{center}
}{
  \vspace*{\stretch{5}}
}