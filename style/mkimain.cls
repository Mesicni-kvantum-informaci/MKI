%introduction
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mkimain}[2023/02/02 MKI LaTeX class]

%used packages
\RequirePackage[czech]{babel}
\RequirePackage{siunitx}
\RequirePackage{standalone}
\RequirePackage{import}
\RequirePackage{fancyhdr}
\RequirePackage{layout}
\RequirePackage{graphicx}
\RequirePackage{blindtext}
\RequirePackage{mdframed}
\RequirePackage{float}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{lastpage}
\RequirePackage{indentfirst}
\RequirePackage[version=4]{mhchem}
\RequirePackage{tikz}
\RequirePackage{enumerate}
\RequirePackage{pgfplots}
\RequirePackage{catchfilebetweentags}
\RequirePackage{url}
\RequirePackage{physics}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\usepackage[defaultlines=4,all]{nowidow}
\makeatletter
\patchcmd{\CatchFBT@Fin@l}{\endlinechar\m@ne}{}
  {}{\typeout{Unsuccessful patch!}}

\usetikzlibrary{arrows,shapes.gates.logic.US,shapes.gates.logic.IEC,calc,babel}
\sisetup{output-decimal-marker = {,}}
\pgfplotsset{width=10cm, compat=1.9}
\DeclareSIUnit \parsec {pc}
\DeclareSIUnit \l {l}

\AtBeginDocument{\RenewCommandCopy\qty\SI}

%options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt]{article}

%page layout
\setlength{\voffset}{1cm}
\setlength{\headsep}{1cm}
\setlength{\topmargin}{-2cm}
\addtolength{\topmargin}{-2.5pt}
\setlength{\textheight}{24cm}
\setlength{\textwidth}{17.5cm}
\setlength{\footskip}{1.5cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\headheight}{14.5pt}
\setlength{\parindent}{20pt}

\paperwidth=210mm
\paperheight=297mm

\setlength\oddsidemargin{\dimexpr(\paperwidth-\textwidth)/2 - 1in\relax}
\setlength\evensidemargin{\oddsidemargin}


%záhlaví
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhead[R]{\@month ~\@year}
\fancyhead[C]{Měsíční kvantum informací}
\fancyhead[L]{\@series.~série}

%záhlaví první strany
\fancypagestyle{firstpage}
{
   \fancyhf{}
   \renewcommand{\headrulewidth}{0pt}
}

%new comands
\newcommand\@series{0}
\newcommand\series[1]{\renewcommand\@series{#1}}

\newcommand\@month{0}
\renewcommand\month[1]{\renewcommand\@month{#1}}

\newcommand\@year{0}
\renewcommand\year[1]{\renewcommand\@year{#1}}

%generates first page for online version
\newcommand{\firstpageel}[1]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#1}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{\@series.~série, \@month ~\@year}
\end{center}
\vspace*{\fill}
\newpage
}

%generates first page for printed version
\newcommand{\firstpageprint}[2]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#1}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{\@series.~série, \@month ~\@year}
\vspace{1.5cm}
\begin{figure}[H]
    \centering{\includegraphics[scale=0.4]{#2}}

    \centering{Elektronická verze}
\end{figure}
\end{center}
\vspace*{\fill}
\newpage
}

%generates first page for online version of solution
\newcommand{\solfirstpageel}[1]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#1}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{řešení~\@series.~série, \@month ~\@year}
\end{center}
\vspace*{\fill}
\newpage
}

%generates first page for printed version
\newcommand{\solfirstpageprint}[2]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#1}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{řešení~\@series.~série, \@month ~\@year}
\vspace{1.5cm}
\begin{figure}[H]
    \centering{\includegraphics[scale=0.4]{#2}}

    \centering{Elektronická verze řešení}
\end{figure}
\end{center}
\vspace*{\fill}
\newpage
}

%generates horizontal line with custom spacing 
\newcommand{\klein}{
\vspace{0.05cm}
\hrule
\vspace{0.7cm}
}

%problem origin command
\newcommand{\proborigin}[1]{
\begin{flushright}
    \textit{#1}
\end{flushright}
}

%defines choice environment for questions
\newcounter{choice}
\renewcommand\thechoice{\alph{choice}}
\newcommand\choicelabel{\thechoice)}

\newenvironment{choices}%
  {\list{\choicelabel}%
     {\usecounter{choice}\def\makelabel##1{\hss\llap{##1}}%
       \settowidth{\leftmargin}{W.\hskip\labelsep\hskip -0.4em}%
       \def\choice{%
         \item
       } % choice
       \labelwidth\leftmargin\advance\labelwidth-\labelsep
       \topsep=5pt
       \partopsep=0pt
     }%
  }%
  {\endlist}