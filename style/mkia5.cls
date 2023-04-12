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
\RequirePackage{indentfirst}
\RequirePackage[version=4]{mhchem}
\RequirePackage{tikz}
\RequirePackage{enumerate}
\RequirePackage{pgfplots}
\RequirePackage{url}
\usetikzlibrary{arrows,shapes.gates.logic.US,shapes.gates.logic.IEC,calc,babel}
\sisetup{output-decimal-marker = {,}}
\pgfplotsset{compat=1.18, width=10cm}

%options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt]{article}

%page layout
\setlength{\voffset}{1cm}
\setlength{\headsep}{1cm}
\setlength{\topmargin}{-2cm}
\addtolength{\topmargin}{-2.5pt}
\setlength{\textheight}{16.969696cm}
\setlength{\textwidth}{12.33333cm}
\setlength{\footskip}{1.5cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\headheight}{14.5pt}
\setlength{\parindent}{20pt}

\paperwidth=148mm
\paperheight=210mm

\setlength\oddsidemargin{\dimexpr(\paperwidth-\textwidth)/2 - 1in\relax}
\setlength\evensidemargin{\oddsidemargin}



%záhlaví
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhead[R]{\@month ~\@year}
\fancyhead[C]{Měsíční kvantum informací}
\fancyhead[L]{\@series.~série}

%new comands
\newcommand\@series{0}
\newcommand\series[1]{\renewcommand\@series{#1}}

\newcommand\@month{0}
\renewcommand\month[1]{\renewcommand\@month{#1}}

\newcommand\@year{0}
\renewcommand\year[1]{\renewcommand\@year{#1}}

%generates horizontal line with custom spacing 
\newcommand{\klein}{
\vspace{0.3cm}
\hrule
\vspace{0.7cm}
}