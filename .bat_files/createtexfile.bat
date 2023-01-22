@ECHO OFF
cd batch2
cd main
(
echo \documentclass{article}
echo \usepackage[subpreambles=true]{standalone}
echo \usepackage{import}
echo \begin{document}
echo \import{../problems/problem2-U1/}{problem2-U1.tex}
echo \import{../problems/problem2-U2/}{problem2-U2.tex}
echo \import{../problems/problem2-U3/}{problem2-U3.tex}
echo \import{../problems/problem2-A/}{problem2-A.tex}
echo \import{../problems/problem2-K/}{problem2-K.tex}
echo \import{../problems/problem2-B/}{problem2-B.tex}
echo \end{document}
)>"batch2.tex"