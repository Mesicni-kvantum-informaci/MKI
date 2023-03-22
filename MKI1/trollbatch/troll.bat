
@echo off
setlocal enabledelayedexpansion

set /p Year=Enter calendar year:

::creates 4 folders in each batch folder (main, mainsol, problems, solutions)
	md "trollbatch3"/"main" "trollbatch3"/"mainsol" "trollbatch3"/"problems" "trollbatch3"/"solutions"

	::divides main into 2 folders (batchnel, batchnprint)
	md "trollbatch3"/"main"/"trollbatch3el" "trollbatch3"/"main"/"trollbatch3print"

	::divides mainsol into 2 folders (batchnsolel, batchnsolprint)
	md "trollbatch3"/"mainsol"/"trollbatch3solel" "trollbatch3"/"mainsol"/"trollbatch3solprint"

 ::divides problems into 6 folders (problemn-A, problemn-B, problemn-K, problemn-U1, problemn-U2, problemn-U3)
 md "trollbatch3"/"problems"/"problemT3--A"
 md "trollbatch3"/"problems"/"problemT3--B"
 md "trollbatch3"/"problems"/"problemT3--K"
 md "trollbatch3"/"problems"/"problemT3--U1"
 md "trollbatch3"/"problems"/"problemT3--U2"
 md "trollbatch3"/"problems"/"problemT3--U3"

 ::divides solutions into 6 folders (solutionn-A, solutionn-B, solutionn-K, solutionn-U1, solutionn-U2, solutionn-U3)
 md "trollbatch3"/"solutions"/"solutionT3--A"
 md "trollbatch3"/"solutions"/"solutionT3--B"
 md "trollbatch3"/"solutions"/"solutionT3--K"
 md "trollbatch3"/"solutions"/"solutionT3--U1"
 md "trollbatch3"/"solutions"/"solutionT3--U2"
 md "trollbatch3"/"solutions"/"solutionT3--U3"

cd trollbatch3
(
echo # TrollBatch3 - problems
echo:
echo ^| úloha ^| název ^| téma ^| jméno ^|
echo ^|-------^|-------^|------^|-------^|
echo ^| T3-U1  ^|       ^|      ^|       ^|
echo ^| T3-U2  ^|       ^|      ^|       ^|
echo ^| T3-U3  ^|       ^|      ^|       ^|
echo ^| T3-A   ^|       ^|      ^|       ^|
echo ^| T3-K   ^|       ^|      ^|       ^|
echo ^| T3-B   ^|       ^|      ^|       ^|
)>"trollbatch3.md"

cd main\trollbatch3el
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../problems/problemT3-U1/}{problemT3-U1.tex}
echo \import{../../problems/problemT3-U2/}{problemT3-U2.tex}
echo \import{../../problems/problemT3-U3/}{problemT3-U3.tex}
echo \import{../../problems/problemT3-A/}{problemT3-A.tex}
echo \import{../../problems/problemT3-K/}{problemT3-K.tex}
echo \import{../../problems/problemT3-B/}{problemT3-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"trollbatch3el.tex"

cd ..\trollbatch3print
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/trollbatch3el.png}
echo \import{../../problems/problemT3-U1/}{problemT3-U1.tex}
echo \import{../../problems/problemT3-U2/}{problemT3-U2.tex}
echo \import{../../problems/problemT3-U3/}{problemT3-U3.tex}
echo \import{../../problems/problemT3-A/}{problemT3-A.tex}
echo \import{../../problems/problemT3-K/}{problemT3-K.tex}
echo \import{../../problems/problemT3-B/}{problemT3-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"trollbatch3print.tex"

cd ..\..\mainsol\trollbatch3solel
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../solutions/solutionT3-U1/}{solutionT3-U1.tex}
echo \import{../../solutions/solutionT3-U2/}{solutionT3-U2.tex}
echo \import{../../solutions/solutionT3-U3/}{solutionT3-U3.tex}
echo \import{../../solutions/solutionT3-A/}{solutionT3-A.tex}
echo \import{../../solutions/solutionT3-K/}{solutionT3-K.tex}
echo \import{../../solutions/solutionT3-B/}{solutionT3-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"trollbatch3solel.tex"

cd ..\trollbatch3solprint
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/trollbatch3solel.png}
echo \import{../../solutions/solutionT3-U1/}{solutionT3-U1.tex}
echo \import{../../solutions/solutionT3-U2/}{solutionT3-U2.tex}
echo \import{../../solutions/solutionT3-U3/}{solutionT3-U3.tex}
echo \import{../../solutions/solutionT3-A/}{solutionT3-A.tex}
echo \import{../../solutions/solutionT3-K/}{solutionT3-K.tex}
echo \import{../../solutions/solutionT3-B/}{solutionT3-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"trollbatch3solprint.tex"

cd ..\..\problems\problemT3-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.A HeaderT3-A}
echo \end{document}
)>"problemT3-A.tex"

cd ..\problemT3-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.B HeaderT3-B}
echo \noindent 
echo \end{document}
)>"problemT3-B.tex"

cd ..\problemT3-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.K HeaderT3-K}
echo \end{document}
)>"problemT3-K.tex"

cd ..\problemT3-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U1 HeaderT3-U1}
echo \noindent 
echo \end{document}
)>"problemT3-U1.tex"

cd ..\problemT3-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U2 HeaderT3-U2}
echo \noindent 
echo \end{document}
)>"problemT3-U2.tex"

cd ..\problemT3-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U3 HeaderT3-U3}
echo \noindent 
echo \end{document}
)>"problemT3-U3.tex"


cd ..\..\solutions\solutionT3-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.A HeaderSolT3-A}
echo \end{document}
)>"solutionT3-A.tex"

cd ..\solutionT3-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.B HeaderSolT3-B}
echo \end{document}
)>"solutionT3-B.tex"

cd ..\solutionT3-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.K HeaderSolT3-K}
echo \end{document}
)>"solutionT3-K.tex"

cd ..\solutionT3-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U1 HeaderSolT3-U1}
echo \end{document}
)>"solutionT3-U1.tex"

cd ..\solutionT3-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U2 HeaderSolT3-U2}
echo \end{document}
)>"solutionT3-U2.tex"

cd ..\solutionT3-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{3}
echo \month{duben}
echo \year{%Year%}
echo:
echo \begin{document}
echo \section*{III.U3 HeaderSolT3-U3}
echo \end{document}
)>"solutionT3-U3.tex"

