% general setup
% known working with LuaLaTeX as complier
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bcrre_lab_report}
\LoadClass[11pt]{article}


%% generally required packages
% most disertations will require these packages
\RequirePackage{amsmath} %equation formatting
\RequirePackage{ragged2e} %fully justified text
\RequirePackage{booktabs} %table styling
\RequirePackage{hyperref} %hyperlinks
\RequirePackage{graphicx} %figures
\RequirePackage{caption} %allows caption formatting
\RequirePackage{subcaption} %allows subfigures
\RequirePackage{geometry} %page sizing and margins
\RequirePackage[backend=biber, style=authoryear-ibid]{biblatex} %referencing
\RequirePackage{titling} %title page
\RequirePackage{fontspec} %fonts
\RequirePackage{fancyhdr} %headers and footers
\RequirePackage{titlesec} %formatting for headings
\RequirePackage[base]{babel} %language typesetting
\RequirePackage{siunitx} %typesetting for numbers and units


%% more specialist packages
\RequirePackage[table,xcdraw]{xcolor} %allow colour in tables
\RequirePackage{pgfplots} %plotting tool
\RequirePackage{lipsum} %allows for filler Lorem Ipsum text
\RequirePackage{minted} % typesetting of code
\RequirePackage{afterpage} % landscape table
\RequirePackage{pdflscape} % landscape table
\RequirePackage{csvsimple} % import data from csv 


%% template setup
% geometry - page size and margins
\geometry{a4paper, left=2cm, right=2cm, top=2cm, bottom=3cm}
% hyperref - turn off link highlighting
\hypersetup{hidelinks} 
% biblatex - adjust url formatting in references section
\setcounter{biburllcpenalty}{7000}
\setcounter{biburlucpenalty}{8000}
% set table of contents name
\renewcommand{\contentsname}{Table of Contents}
% pgfplots - set the version to run
\pgfplotsset{compat=1.18}
% fontspec - set the document fonts

\setmainfont{Manrope}[ % serif font (title page and headings)
    Path=font/manrope/,
    Scale=1,
    UprightFont=*-Regular.ttf,
    BoldFont=*-Bold.ttf,
    ItalicFont=*-LightItalic.otf,
    BoldItalicFont=*-BoldItalic.otf
]

\setsansfont{Larken}[ % serif font (title page and headings)
    Path=font/larken/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    BoldItalicFont=*-BoldItalic
]
% fancyhdr - headers and footers
% fancy page style (most pages)
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{
\assignmenttitle 

\leftmark
}
\fancyfoot{}
\fancyfoot[R]{\thepage}
\fancyfoot[L]{Student ID: \studentidnumber}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\setlength{\headheight}{26pt}
% plain page style (first pages of chapters)
\fancypagestyle{plain}{
    \fancyhead{} % clear header
    \fancyhead[L]{\leftmark}
    \fancyfoot{} % clear footer
    \fancyfoot[R]{\thepage}
    \fancyfoot[L]{Student ID: \studentidnumber}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0.4pt}
}
%titlesec - format and spacing for each level of title
%%% chapter
\titleformat{\chapter}
{\sffamily\LARGE\bfseries\filright}{\thechapter}{1em}{}{}
\titlespacing*{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
%%% section
\titleformat{\section}
{\sffamily\Large\bfseries\filright}{\thesection}{1em}{}{}
\titlespacing*{\section} {0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
%%% new page for each section
\newcommand{\sectionbreak}{\clearpage}
%%% subsection
\titleformat{\subsection}
{\sffamily\large\bfseries\filright}{\thesubsection}{1em}{}{}
\titlespacing*{\subsection} {0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
%%% subsubsection
\titleformat{\subsubsection}
{\sffamily\normalsize\bfseries\filright}{\thesubsubsection}{1em}{}{}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

% set the format of the title page
\renewcommand{\maketitle}{
\begin{titlepage}
    \begin{center}
        
        \vspace*{1cm}
        \Huge
        {\sffamily \bfseries{University of Birmingham}}

        \vspace{1cm}
        
        \LARGE
        {\sffamily
        College of Engineering and Physical Sciences
        
        \vspace{0.5cm}
        School of Engineering
        
        \vspace{0.5cm}
        Birmingham Centre for Railway Research and Education
        
        \vspace{0.5cm}
        MSc in Railway Systems Engineering and Integration
        }
        
        \vspace{1.5cm}

        \includegraphics[width=0.4\textwidth]{images/uob_logo.pdf}

        \vfill

        {\sffamily
        \textbf{\assignmenttitle}
        
        \vspace{0.5cm}
        \textbf{Module Code:} \modulecode

        \vspace{1cm}
        
        \textbf{Student ID Number:} \studentidnumber
        
        \vspace{0.5cm}
        \textbf{Date Submitted:} \datesubmitted
        }
   \end{center}
\end{titlepage}
}