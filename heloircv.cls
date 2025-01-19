\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{heloircv}[2020/05/01 HeloirCv v0.0.1, A simple cv template.]

\LoadClass{article}

%% Needed packagae
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\usepackage{geometry}
\pagenumbering{gobble}
\usepackage{enumitem}
\usepackage{multicol}

\setlist[itemize]{leftmargin=5mm, itemsep=0mm, topsep=0mm}

%% Set fond to roboto
\usepackage[rm]{roboto}
\usepackage[T1]{fontenc}
\usepackage{hyperref}
\hypersetup{hidelinks}
\urlstyle{same}

%% Remove Indent
\setlength{\parindent}{0pt}

%% Setup default color
\RequirePackage{xcolor}

\definecolor{mainTextColor}{RGB}{50, 51, 54}
\definecolor{secondaryTextColor}{RGB}{112, 118, 120}
\definecolor{sectionTextColor}{RGB}{140, 140, 140}
\definecolor{backgroundTagColor}{RGB}{241, 245, 247}
\definecolor{black}{RGB}{0, 0, 0}
\definecolor{white}{RGB}{255, 255, 255}



%% Setup default size
\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}
\newcommand{\hugefont}{\fontsize{22pt}{24pt}\selectfont}
\newcommand{\defaultfont}{\fontsize{12pt}{14pt}\selectfont}
\newcommand{\sectionfont}{\fontsize{14pt}{16pt}\selectfont}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}


%% Setup default font
\newcommand{\mainTitleFont}{\rmfamily\bfseries\hugefont}
\newcommand{\mainTextFont}{}
\newcommand{\secondaryText}{}
\newcommand{\sectionTitleText}{\rmfamily}

%% Header command
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\headline}[1]{\def\@headline{#1}}
\newcommand{\homepage}[1]{\def\@homepage{#1}}
\newcommand{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand{\github}[1]{\def\@github{#1}}
\newcommand{\email}[1]{\def\@email{#1}}



%% Define CV header
\newcommand{\cvheader}{
    \begingroup
        {\mainTitleFont\color{mainTextColor}\@name\par}
        \medskip        {\mainTextFont\color{mainTextColor}\@headline~|~\@email~|~ \href{https://\@homepage}{\@homepage}~|~\href{https://\@github}{\@github}~|~\href{https://\@linkedin}{\@linkedin}}
    \endgroup
}

%% Cv Section Command

\newcommand{\cvsection}[2]{%
    \bigskip
    {\sectionfont\sectionTitleText\color{sectionTextColor}\MakeUppercase{\textbf{#1}}}
    \medskip
    \par
    {\color{mainTextColor} #2}
}

%% Tag Command

\newcommand{\tag}[1]{%
    {  \tikz[baseline]\node[anchor=base,fill=backgroundTagColor,inner xsep=1ex,inner ysep=0.75ex,text height=1.5ex,text depth=.25ex]{#1};}
}

%% Education Helper Command
\newcommand{\education}[3]{%
    {\MakeUppercase{#1}\color{mainTextColor}\hfill#3\par\smallskip}
    {#2\par\medskip}
}

%% Work Experience Command
\newcommand{\work}[4]{
    {\textbf{\color{mainTextColor}#1~|~#2}}
    {\color{mainTextColor}\hfill#3}
    {\par\medskip}
    {\color{mainTextColor}#4}
    {\par\medskip}
}
