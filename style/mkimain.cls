%introduction
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mkimain}[2023/02/02 MKI LaTeX class]

%used packages
\RequirePackage[czech]{babel}
\RequirePackage{standalone}
\RequirePackage{import}
\RequirePackage{fancyhdr}
\RequirePackage{layout}
\RequirePackage{graphicx}
\RequirePackage{blindtext}
\RequirePackage{mdframed}
\RequirePackage{float}
\RequirePackage{siunitx}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{lastpage}
\sisetup{output-decimal-marker = {,}}

%options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt]{article}

%page layout
\setlength{\hoffset}{-0.71cm}
\setlength{\voffset}{1cm}
\setlength{\headsep}{1cm}
\setlength{\topmargin}{-2cm}
\addtolength{\topmargin}{-2.5pt}
\setlength{\textheight}{22cm}
\setlength{\textwidth}{18cm}
\setlength{\footskip}{1.5cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\headheight}{14.5pt}

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

%generates first page for online version (#4 should be "../../../../propagace/logo/mkilogo.png") 
\newcommand{\firstpageel}[4]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#4}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{#1. série, #2 #3}
\end{center}
\vspace*{\fill}
\newpage
}

%generates first page for printed version (#4 should be "../../../../propagace/logo/mkilogo.png", #5 should be "../../../../propagace/qrcodes/batch1el")
\newcommand{\firstpageprint}[5]{
\thispagestyle{firstpage}
\vspace*{\fill}
\begin{center}
\includegraphics[scale=1]{#4}\\
\quad\\
\textbf{\Huge{Měsíční kvantum informací}}\\
\quad\\
\LARGE{#1. série, #2 #3}
\vspace{1.5cm}
\begin{figure}[H]
    \centering{\includegraphics[scale=0.4]{#5}}

    \centering{elektronická verze}
\end{figure}
\end{center}
\vspace*{\fill}
\newpage
}