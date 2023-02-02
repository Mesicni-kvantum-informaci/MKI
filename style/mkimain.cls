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
