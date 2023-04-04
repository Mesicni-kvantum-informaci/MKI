@echo off
setlocal enabledelayedexpansion

set /p Year=Enter calendar year:
set /p MKIyear=Enter MKI year:


set month[0]=leden
set month[1]=únor
set month[2]=březen
set month[3]=duben
set month[4]=květen
set month[5]=červen
set month[6]=červenec
set month[7]=srpen
set month[8]=září
set month[9]=říjen

set num[0]=null
set num[1]=I
set num[2]=II
set num[3]=III
set num[4]=IV
set num[5]=V
set num[6]=VI
set num[7]=VII
set num[8]=VIII
set num[9]=IX
set num[10]=X
set num[11]=XI
set num[12]=XII

cd ..\
md "MKI%MKIyear%"

cd MKI%MKIyear%

::for loop creates all folders
for /l %%x in (1, 1, 12) do (
	::creates 4 folders in each batch folder (main, mainsol, problems, solutions)
	md "batch%%x"/"main" "batch%%x"/"mainsol" "batch%%x"/"problems" "batch%%x"/"solutions"

	::divides main into 2 folders (batchnel, batchnprint)
	md "batch%%x"/"main"/"batch%%xel" "batch%%x"/"main"/"batch%%xprint"

	::divides mainsol into 2 folders (batchnsolel, batchnsolprint)
	md "batch%%x"/"mainsol"/"batch%%xsolel" "batch%%x"/"mainsol"/"batch%%xsolprint"

	::divides problems into 6 folders (problemn-A, problemn-B, problemn-K, problemn-U1, problemn-U2, problemn-U3)
	md "batch%%x"/"problems"/"problem%%x-A"
	md "batch%%x"/"problems"/"problem%%x-B"
	md "batch%%x"/"problems"/"problem%%x-K"
	md "batch%%x"/"problems"/"problem%%x-U1"
	md "batch%%x"/"problems"/"problem%%x-U2"
	md "batch%%x"/"problems"/"problem%%x-U3"

	::divides solutions into 6 folders (solutionn-A, solutionn-B, solutionn-K, solutionn-U1, solutionn-U2, solutionn-U3)
	md "batch%%x"/"solutions"/"solution%%x-A"
	md "batch%%x"/"solutions"/"solution%%x-B"
	md "batch%%x"/"solutions"/"solution%%x-K"
	md "batch%%x"/"solutions"/"solution%%x-U1"
	md "batch%%x"/"solutions"/"solution%%x-U2"
	md "batch%%x"/"solutions"/"solution%%x-U3"
)

::creates batch1.md in batch1 folder
cd batch1
(
echo # Batch1 - problems
echo:
echo ^| úloha ^| název ^| téma ^| jméno ^|
echo ^|-------^|-------^|------^|-------^|
echo ^| 1-U1  ^|       ^|      ^|       ^|
echo ^| 1-U2  ^|       ^|      ^|       ^|
echo ^| 1-U3  ^|       ^|      ^|       ^|
echo ^| 1-A   ^|       ^|      ^|       ^|
echo ^| 1-K   ^|       ^|      ^|       ^|
echo ^| 1-B   ^|       ^|      ^|       ^|
)>"batch1.md"

cd main\batch1el
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../problems/problem1-U1/}{problem1-U1.tex}
echo \import{../../problems/problem1-U2/}{problem1-U2.tex}
echo \import{../../problems/problem1-U3/}{problem1-U3.tex}
echo \import{../../problems/problem1-A/}{problem1-A.tex}
echo \import{../../problems/problem1-K/}{problem1-K.tex}
echo \import{../../problems/problem1-B/}{problem1-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch1el.tex"

cd ..\batch1print
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/batch1el.png}
echo \import{../../problems/problem1-U1/}{problem1-U1.tex}
echo \import{../../problems/problem1-U2/}{problem1-U2.tex}
echo \import{../../problems/problem1-U3/}{problem1-U3.tex}
echo \import{../../problems/problem1-A/}{problem1-A.tex}
echo \import{../../problems/problem1-K/}{problem1-K.tex}
echo \import{../../problems/problem1-B/}{problem1-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch1print.tex"

cd ..\..\mainsol\batch1solel
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../solutions/solution1-U1/}{solution1-U1.tex}
echo \import{../../solutions/solution1-U2/}{solution1-U2.tex}
echo \import{../../solutions/solution1-U3/}{solution1-U3.tex}
echo \import{../../solutions/solution1-A/}{solution1-A.tex}
echo \import{../../solutions/solution1-K/}{solution1-K.tex}
echo \import{../../solutions/solution1-B/}{solution1-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch1solel.tex"

cd ..\batch1solprint
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/batch1solel.png}
echo \import{../../solutions/solution1-U1/}{solution1-U1.tex}
echo \import{../../solutions/solution1-U2/}{solution1-U2.tex}
echo \import{../../solutions/solution1-U3/}{solution1-U3.tex}
echo \import{../../solutions/solution1-A/}{solution1-A.tex}
echo \import{../../solutions/solution1-K/}{solution1-K.tex}
echo \import{../../solutions/solution1-B/}{solution1-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch1solprint.tex"

cd ..\..\problems\problem1-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.A Header1-A}
echo %%^</header^>
echo:
echo:
echo %%\\
echo %%\\
echo %%\textbf{Úloha:}
echo:
echo %%^<*task^>
echo:
echo %%\begin{enumerate}[\noindent {}]
echo %%\item otazka
echo %%  \begin{choices}
echo %%    \choice
echo %%  \end{choices}
echo %%\end{enumerate}
echo:
echo %%^</task^>
echo \end{document}
)>"problem1-A.tex"

cd ..\problem1-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.B Header1-B}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem1-B.tex"

cd ..\problem1-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.K Header1-K}
echo %%^</header^>
echo:
echo:
echo %%\\
echo %%\\
echo %%\textbf{Úloha:}
echo:
echo %%^<*task^>
echo:
echo %%\begin{enumerate}[\noindent {}]
echo %%\item otazka
echo %%  \begin{choices}
echo %%    \choice
echo %%  \end{choices}
echo %%\end{enumerate}
echo:
echo %%^</task^>
echo \end{document}
)>"problem1-K.tex"

cd ..\problem1-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.U1 Header1-U1}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem1-U1.tex"

cd ..\problem1-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.U2 Header1-U2}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem1-U2.tex"

cd ..\problem1-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{%num[1]%.U3 Header1-U3}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem1-U3.tex"


cd ..\..\solutions\solution1-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-A/problem1-A.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-A/problem1-A.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-A.tex"

cd ..\solution1-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-B/problem1-B.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-B/problem1-B.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-B.tex"

cd ..\solution1-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-K/problem1-K.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-K/problem1-K.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-K.tex"

cd ..\solution1-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-U1/problem1-U1.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-U1/problem1-U1.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-U1.tex"

cd ..\solution1-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-U2/problem1-U2.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-U2/problem1-U2.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-U2.tex"

cd ..\solution1-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{1}
echo \month{%month[1]%}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem1-U3/problem1-U3.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem1-U3/problem1-U3.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution1-U3.tex"

::for loop creates .tex files in rest of batchn folders
for /l %%y in (2, 1, 12) do (
	cd ..\..\..\batch%%y
	(
echo # Batch%%y - problems
echo:
echo ^| úloha ^| název ^| téma ^| jméno ^|
echo ^|-------^|-------^|------^|-------^|
echo ^| %%y-U1  ^|       ^|      ^|       ^|
echo ^| %%y-U2  ^|       ^|      ^|       ^|
echo ^| %%y-U3  ^|       ^|      ^|       ^|
echo ^| %%y-A   ^|       ^|      ^|       ^|
echo ^| %%y-K   ^|       ^|      ^|       ^|
echo ^| %%y-B   ^|       ^|      ^|       ^|
)>"batch%%y.md"

cd main\batch%%yel
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../problems/problem%%y-U1/}{problem%%y-U1.tex}
echo \import{../../problems/problem%%y-U2/}{problem%%y-U2.tex}
echo \import{../../problems/problem%%y-U3/}{problem%%y-U3.tex}
echo \import{../../problems/problem%%y-A/}{problem%%y-A.tex}
echo \import{../../problems/problem%%y-K/}{problem%%y-K.tex}
echo \import{../../problems/problem%%y-B/}{problem%%y-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch%%yel.tex"

cd ..\batch%%yprint
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \firstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/batch%%yel.png}
echo \import{../../problems/problem%%y-U1/}{problem%%y-U1.tex}
echo \import{../../problems/problem%%y-U2/}{problem%%y-U2.tex}
echo \import{../../problems/problem%%y-U3/}{problem%%y-U3.tex}
echo \import{../../problems/problem%%y-A/}{problem%%y-A.tex}
echo \import{../../problems/problem%%y-K/}{problem%%y-K.tex}
echo \import{../../problems/problem%%y-B/}{problem%%y-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch%%yprint.tex"

cd ..\..\mainsol\batch%%ysolel
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageel{../../../../propagace/logo/mkilogo.png}
echo \import{../../solutions/solution%%y-U1/}{solution%%y-U1.tex}
echo \import{../../solutions/solution%%y-U2/}{solution%%y-U2.tex}
echo \import{../../solutions/solution%%y-U3/}{solution%%y-U3.tex}
echo \import{../../solutions/solution%%y-A/}{solution%%y-A.tex}
echo \import{../../solutions/solution%%y-K/}{solution%%y-K.tex}
echo \import{../../solutions/solution%%y-B/}{solution%%y-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch%%ysolel.tex"

cd ..\batch%%ysolprint
(
echo \documentclass{../../../../style/mkimain}
echo: 
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \solfirstpageprint{../../../../propagace/logo/mkilogo.png}{../../../../propagace/qrcodes/MKI%MKIyear%/batch%%ysolel.png}
echo \import{../../solutions/solution%%y-U1/}{solution%%y-U1.tex}
echo \import{../../solutions/solution%%y-U2/}{solution%%y-U2.tex}
echo \import{../../solutions/solution%%y-U3/}{solution%%y-U3.tex}
echo \import{../../solutions/solution%%y-A/}{solution%%y-A.tex}
echo \import{../../solutions/solution%%y-K/}{solution%%y-K.tex}
echo \import{../../solutions/solution%%y-B/}{solution%%y-B.tex}
echo \import{../../../../general/end}{end.tex}
echo \end{document}
)>"batch%%ysolprint.tex"

cd ..\..\problems\problem%%y-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.A Header%%y-A}
echo %%^</header^>
echo:
echo:
echo %%\\
echo %%\\
echo %%\textbf{Úloha:}
echo:
echo %%^<*task^>
echo:
echo %%\begin{enumerate}[\noindent {}]
echo %%\item otazka
echo %%  \begin{choices}
echo %%    \choice
echo %%  \end{choices}
echo %%\end{enumerate}
echo:
echo %%^</task^>
echo \end{document}
)>"problem%%y-A.tex"

cd ..\problem%%y-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.B Header%%y-B}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem%%y-B.tex"

cd ..\problem%%y-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.K Header%%y-K}
echo %%^</header^>
echo:
echo:
echo %%\\
echo %%\\
echo %%\textbf{Úloha:}
echo:
echo %%^<*task^>
echo:
echo %%\begin{enumerate}[\noindent {}]
echo %%\item otazka
echo %%  \begin{choices}
echo %%    \choice
echo %%  \end{choices}
echo %%\end{enumerate}
echo:
echo %%^</task^>
echo \end{document}
)>"problem%%y-K.tex"

cd ..\problem%%y-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.U1 Header%%y-U1}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem%%y-U1.tex"

cd ..\problem%%y-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.U2 Header%%y-U2}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem%%y-U2.tex"

cd ..\problem%%y-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo %%^<*header^>
echo \section*{!num[%%y]!.U3 Header%%y-U3}
echo %%^</header^>
echo %%^<*task^>
echo:
echo \noindent
echo:
echo %%^</task^> 
echo \end{document}
)>"problem%%y-U3.tex"


cd ..\..\solutions\solution%%y-A
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-A/problem%%y-A.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-A/problem%%y-A.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-A.tex"

cd ..\solution%%y-B
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-B/problem%%y-B.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-B/problem%%y-B.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-B.tex"

cd ..\solution%%y-K
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-K/problem%%y-K.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-K/problem%%y-K.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-K.tex"

cd ..\solution%%y-U1
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-U1/problem%%y-U1.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-U1/problem%%y-U1.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-U1.tex"

cd ..\solution%%y-U2
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-U2/problem%%y-U2.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-U2/problem%%y-U2.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-U2.tex"

cd ..\solution%%y-U3
(
echo \documentclass{../../../../style/mkimain}
echo:
echo \series{%%y}
echo \month{!month[%%y]!}
echo \year{%Year%}
echo:
echo \begin{document}
echo \ExecuteMetaData[../../problems/problem%%y-U3/problem%%y-U3.tex]{header}
echo \noindent\ExecuteMetaData[../../problems/problem%%y-U3/problem%%y-U3.tex]{task}
echo \proborigin{}
echo \klein
echo \end{document}
)>"solution%%y-U3.tex"
)

cd ..\..\..\..\propagace\qrcodes
md "MKI%MKIyear%"