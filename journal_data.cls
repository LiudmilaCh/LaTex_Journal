%This code was made by (c)Liudmila Chizhikova for Moscow Aviation Institute journal "Trudy MAI"
%October 2021
%Copyright (c) 2021 Liudmila Chizhikova. 
%Initiative work of LLC Laboratory SARDA. All rights reserved
%This file is subject to the Creative Commons CC BY 4.0


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{journal_data}[2021/10/10 for journal data]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Необходимые библиотеки и настройки документа

\ProcessOptions
\LoadClass{journal}

\RequirePackage[T2A]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage[russian,english]{babel}
\RequirePackage{hyphenat}
\RequirePackage[utf8]{inputenc}
%\RequirePackage[cp1251]{inputenc}
\RequirePackage[T1]{fontenc}
%\RequirePackage[encoding]{fontenc}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{authblk}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{multicol}  
\RequirePackage[russian]{babel}

\DeclareOption{12pt}{\relax}
\DeclareOption{twoside}{\relax}
\DeclareOption*{\PassOptionToClass{\CurrentOption}{journal}}


\ProcessOptions
\PassOptionsToClass{twoside,12pt,journal,a4paper}{journal}	
\RequirePackage[utf8]{inputenc}	
\RequirePackage[T2A]{fontenc}	
\RequirePackage{ifthen}	
\RequirePackage[english, russian]{babel}	
\RequirePackage{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage{misccorr}
\RequirePackage{mathptmx}
\RequirePackage{textcomp}
\RequirePackage{multirow}
\RequirePackage{wrapfig}
\RequirePackage{epstopdf}
\RequirePackage{eso-pic}						%russian language
\RequirePackage[top=2.5cm, left=2.5cm, right=2.5cm, bottom=2.7cm]{geometry} %pagesize
%\RequirePackage[pdftex, unicode]{hyperref}					%hyperref for pdf
%%%%%%?\RequirePackage{cmap}								%search russian in pdf
\RequirePackage{type1ec}							%true type fonts cm
\RequirePackage{graphicx}							%for graphic \includegraphics
\RequirePackage{caption}                            %for cation separator
\DeclareCaptionLabelSeparator{colon}{.~}					%picture separator -- point
\ProcessOptions
\RequirePackage{indentfirst}							%first abzac
\RequirePackage{amsmath}							%math package
\RequirePackage{amsfonts}							%math fonts
\RequirePackage{rotating}
\RequirePackage{mathtext}
\RequirePackage{amssymb}
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{floatrow,caption}
\usepackage[lofdepth]{subfig}
\RequirePackage{tempora}

\DeclareOption{onecolumn}
%\selectlanguage{russian}
%           Для полей заголовков
%\pagestyle{fancy}
%\fancyhf{}
%\fancyhead[R]{\bfseries\nouppercase{\@charvol \@volume(\@jnumber)$\pmb{\cdot}$\@jmonth,\@jyear}}
%\fancyhead[L]{\bfseries\nouppercase{\@jname}}
%\renewcommand{\headrulewidth}{.2pt}
%\renewcommand{\footrulewidth}{0pt}
%\fancyfoot[R]{\thepage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Шапка для статьи
\newcommand\@UDC{}
\newcommand\@DOI{}
\newcommand\@authorart{}
\newcommand\@authorartEN{}
\newcommand\@titleRU{}
\newcommand\@titleEN{}
\newcommand\@institute{}
\newcommand\@instituteEN{}
\newcommand\@mailaddress{}
\newcommand\@sharingdate{}
\newcommand\@abstract{}
\newcommand\@keywords{}

%           Данные для журнала
\newcommand\@charvol{Выпуск}
\newcommand\@jname{Труды МАИ}
\newcommand\@volume{}
\newcommand\@jnumber{}
\newcommand\@jmonth{}
\newcommand\@jyear{}



\renewcommand{\thesubtable}{\asbuk{subtable}}

\newcommand{\authorart}[1]{\renewcommand\@authorart{\bfseries #1}}
\newcommand{\authorartEN}[1]{\renewcommand\@authorartEN{\bfseries #1}}
\newcommand{\titleRU}[1]{\renewcommand\@titleRU{\bfseries #1}}
\newcommand{\titleEN}[1]{\renewcommand\@titleEN{\bfseries #1}}
\newcommand{\UDC}[1]{\renewcommand\@UDC{#1}}
\newcommand{\DOI}[1]{\renewcommand\@DOI{#1}}
\newcommand{\institute}[1]{\renewcommand\@institute{#1}}
\newcommand{\instituteEN}[1]{\renewcommand\@instituteEN{#1}}
\newcommand{\mailaddress}[1]{\renewcommand\@mailaddress{#1}}
\newcommand{\sharingdate}[1]{\renewcommand\@sharingdate{#1}}
%\newcommand{\keywords}[1]{\renewcommand\@keywords{#1}}
\newcommand{\volume}[1]{\renewcommand\@volume{#1}}
\newcommand{\jnumber}[1]{\renewcommand\@jnumber{#1}}
\newcommand{\jyear}[1]{\renewcommand\@jyear{#1}}
\newcommand{\jmonth}[1]{\renewcommand\@jmonth{#1}}



\pagestyle{fancy}

%  Оформление отображения шапки статьи с заголовком
\newcommand\showtitle{%           Для полей заголовков
\begingroup
\selectlanguage{russian}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\bfseries\nouppercase{\@charvol \@volume(\@jnumber)$\pmb{\cdot}$\@jmonth,\@jyear}}
\fancyhead[L]{\bfseries\nouppercase{\@jname}}
\renewcommand{\headrulewidth}{.2pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[R]{\thepage}
\vspace{0.5cm}
\endgroup
%\pagestyle{fancy}
\selectlanguage{russian}
    \begin{flushleft}
УДК: \@UDC
\end{flushleft}
\begin{flushright}
DOI: \@DOI
\end{flushright}

\vspace{0.5cm}


\begingroup
\selectlanguage{russian}
\begin{center}
%\bfseries
   % \textbf{\@titleRU}
\foreignlanguage{russian}{\Large{\@titleRU}}
    \newline
    \end{center}
    
    \begin{center}
 \foreignlanguage{russian}{\textit{\@authorart}}       
    %\newline
    
    \@institute
    \newline
    
    \@mailaddress
    
\end{center}

\begin{flushright}
Статья получена:  \@sharingdate
\end{flushright}
\endgroup
}
\newcommand\showtitleEN{
    \begingroup
       \begin{center}
         \selectlanguage{english}
           \Large{\@titleEN}
           \newline
       \end{center}   
       \begin{center}
           \textit{\@authorartEN}
           \newline
           \@instituteEN
           \newline
           \@mailaddress
           \newline
       \end{center}
    \endgroup
}
\endinput

