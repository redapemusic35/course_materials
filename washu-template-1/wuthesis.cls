%%
%% This is file `wuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% wuthesis.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from wuthesis.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file wuthesis.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% Copyright (C) 1996 Long Duan
%% 2005, 2007, and 2008 revisions by Greg Hackmann
%% 2014 revisions by Michael Hall
%% 2023 revisions by Jeremy Buhler and Roger Chamberlain
%%
%% Please note:  This document class is not compatable with the
%%               old LaTeX 2.09.  It uses LaTeX2e specific commands.
%%
\def\fileversion{1.8}
\def\filedate{5/17/2023}

\typeout{*************************************************************}
\typeout{** Wash U - McKelvey School thesis class                     }
\typeout{** version \fileversion, \filedate                           }
\typeout{** Copyright (c) 1995 Kevin Ruland                           }
\typeout{** with revisions by Long Duan, Greg Hackmann,               }
\typeout{** Michael Hall, Jeremy Buhler, and Roger Chamberlain        }
\typeout{*************************************************************}
%%
%% Actually not too much of this code remains but the copyright
%% remains.
%%*************************************************************
%%** UT Austin Thesis Style File, version 2.0, January 1995
%%**
%%** Copyright (c) 1995 Dinesh Das.  All rights reserved.
%%** This file is free and can be modified or distributed as
%%** long as you meet the following conditions:
%%**
%%** (1) This copyright notice is kept intact on all modified
%%**     copies.
%%** (2) If this file is modified, the original file name must
%%**     not be used.
%%*************************************************************
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wuthesis}[\filedate\space v\fileversion]

% Note: this option does not currently work
\DeclareOption{thesisdraft}{
  \AtEndOfClass{
    \def\ps@textpageheadings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddhead{\textsl{Draft of \timestamp}\hfil\thepage}%
     \let\@mkboth\@gobbletwo
     \let\chaptermark\@gobble
     \let\sectionmark\@gobble}
   }
}
\DeclareOption{phdthesis}{
    \newcommand{\thesistype}{Dissertation}
    \newcommand{\thesisdegree}{Doctor of Philosophy}
    \newcommand{\thesisdegreeabbreviation}{Ph.D.}
}
\DeclareOption{mastersthesis}{
    \newcommand{\thesistype}{Thesis}
    \newcommand{\thesisdegree}{Master of Science}
    \newcommand{\thesisdegreeabbreviation}{M.S.}
}
\DeclareOption{singlespace}{\AtBeginDocument{\singlespacing}}
\DeclareOption{oneandhalfspace}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{doublespace}{\AtBeginDocument{\doublespacing}}
\DeclareOption{indentfirst}{\let\@afterindentfalse\@afterindenttrue
                            \@afterindenttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{oneandhalfspace}
\ProcessOptions
\LoadClass[oneside,openany]{book}[1994/12/01]
\ifx\undefined\thesistype
  \ClassError{wuthesis}
   {Please select either the phdthesis or mastersthesis class option}
\fi
\RequirePackage[normalem]{ulem}
\RequirePackage{setspace}
\RequirePackage[nocfg,intoc]{nomencl}

%% Format the table of contents, list of figures, list of tables, and list of abbreviations properly.

% add "titles" option to tocloft to force Toc, LoF, and LoT to start immediately below the top margin of the page.  Default is to add ~1in extra space.
%\RequirePackage[titles]{tocloft}
\RequirePackage{tocloft}

% fancy header package for fixing page numbers in appendices
\RequirePackage{fancyhdr}

\cftsetrmarg{2.55em}
\cftsetpnumwidth{2.1em}
\renewcommand{\cftfigindent}{0pt}
\renewcommand{\cfttabindent}{0pt}
\renewcommand{\cftfigpresnum}{Figure }
\renewcommand{\cftfignumwidth}{5.7em}
\renewcommand{\cftfigaftersnum}{:}
\renewcommand{\cfttabpresnum}{Table }
\renewcommand{\cfttabnumwidth}{5.7em}
\renewcommand{\cfttabaftersnum}{:}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftbeforefigskip}{12pt}
\renewcommand{\cftbeforetabskip}{12pt}

\newcommand{\listabbrvname}{List of Abbreviations}

% Do not put table titles right on top of the tables
\RequirePackage{caption} 
\captionsetup[table]{skip=2pt}

%\RequirePackage{remreset}  % now included as a core LaTeX cmd
\@removefromreset{footnote}{chapter}

% Redeclare the following in thesis-main.tex. DO NOT
% fill in your actual information here!
\newcommand{\thesisauthorfirstname}{Ima}
\newcommand{\thesisauthorlastname}{Gooden-Reddi}
\newcommand{\thesisauthorpreviousdegrees}{}
\newcommand{\thesismonth}{May}
\newcommand{\thesisyear}{2023}
\newcommand{\thesistitle}{Transformative Hermeneutics of Moss}
\newcommand{\thesischair}{Katherine Doe}
\newcommand{\thesiscommittee}{
Michael Allen \\
Robert Edward Thomas}
\newcommand{\thesisdepartment}{Department of Underwater Basket Weaving}
\newcommand{\thesisfield}{Basket Weaving}

\newcommand{\thesisauthor}{
\thesisauthorfirstname{} \thesisauthorlastname}

\hoffset -1in
\voffset -1in
\setlength{\textheight}{9.0in} % Shortened to make page number appear exactly one inch from bottom (Modified by Michael Hall)
\advance\textheight -0pt % header      % Modified by Michael Hall
\advance\textheight -30pt % footer     % Modified by Michael Hall
\setlength{\textwidth}{6.5in}
\advance\textwidth 0in % left and right margins
\setlength{\oddsidemargin}{1.0in}
\setlength{\evensidemargin}{1.0in}
\setlength{\topmargin}{1.0in}
\setlength{\headheight}{0pt}
%\setlength{\headsep}{18pt}
\setlength{\headsep}{0pt}      % Modified by Michael Hall
%\setlength{\footskip}{18pt}
\setlength{\footskip}{30pt}    % Modified by Michael Hall
\setlength{\parskip}{12pt} % add 1 line skip between paragraphs
\setlength{\parindent}{0in} % use block indenting
\newlength{\chapterpadding}
%\setlength{\chapterpadding}{1.75in}
\setlength{\chapterpadding}{1.0in}
\newlength{\chaptervspace}
\setlength{\chaptervspace}{\chapterpadding}
\addtolength{\chaptervspace}{-\topmargin}
\addtolength{\chaptervspace}{-40pt} % Was 60
\widowpenalty =10000
\clubpenalty  =10000
\brokenpenalty=10000
\AtBeginDocument{\pagestyle{plain}}
\renewcommand{\frontmatter}{
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}}
\renewcommand{\mainmatter}{
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\def\ps@textpageheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@oddhead{\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}
    
\renewcommand{\nomname}{List of Abbreviations}

\newenvironment{thesisdedicationpage}
   {\strut \vfill
    \vspace{-20mm}
    \begin{spacing}{1.5}
    \begin{center}}
    {\end{center}
    \end{spacing}
    {\vfill \strut
    \newpage}}
\newcommand{\thesisdedication}{To myself}

\newenvironment{thesisacknowledgments}
    {\chapter*{\thesisacknowledgmenthead}
     \addcontentsline{toc}{chapter}{\thesisacknowledgmenthead}
     %\begin{spacing}{1.1}
	 }
    {\nopagebreak%
     \thesisacknowledgmentsignature
     %\end{spacing}
     \newpage}
\newcommand{\thesisacknowledgmenthead}{Acknowledgments}
\newcommand{\thesisacknowledgmentsigname}{\thesisauthor}
\newcommand{\thesisacknowledgmentsignametype}{\large}
\newcommand{\thesisacknowledgmentsignature}%
    {\vskip 5mm
     \raggedleft
     {\thesisacknowledgmentsignametype\thesisacknowledgmentsigname}
     \vskip 3mm
     \raggedright
     {\slshape
      \noindent Washington University in St.\ Louis \\
      \thesismonth\ \thesisyear}}
      
\newcommand{\thesistitlepage}{
   \begingroup
   \thispagestyle{empty}
   \addtocounter{page}{-1}
    \thesistitlepagefont
    % force title page to be centered. Comment out next line to start title page at top margin
    \strut \vfill  
    \begin{center}
    \begin{doublespace}
      WASHINGTON UNIVERSITY IN ST.\ LOUIS \\
      \begin{singlespace}
        McKelvey School of Engineering \\
        \thesisdepartment
      \end{singlespace}
    \end{doublespace}

    \vspace{0.5in}

    \begin{singlespace}
      \thesistype\ Examination Committee: \\
      \thesischair, Chair \\
      \thesiscommittee
    \end{singlespace}

    \vspace{0.5in}

    \begin{singlespace}
          {\thesistitle} \\
          by \\
          \thesisstudent \\
    \end{singlespace}

    \vspace{0.75in}

    \begin{singlespace}
      A \MakeLowercase{\thesistype}\ presented to \\
      the McKelvey School of Engineering \\
      of Washington University in \\
      partial fulfillment of the \\
      requirements for the degree \\
      of {\thesisdegree} \\

      \vspace{0.75in}

      \thesismonth\ \thesisyear \\
      St.\ Louis, Missouri
    \end{singlespace}
    \end{center}
    \vfill
    
     \newpage
     \endgroup}
\newcommand{\thesistitlepagefont}{\fontsize{14}{14}\selectfont}
\newcommand{\thesisstudent}{\thesisauthor\thesisauthorpreviousdegrees}

\newcommand{\thesiscopyrightpage}{
    \begingroup
    \pagestyle{empty}
    \strut \vfill
    \vspace{-20mm}
    \large{
    \begin{center}
      \copyright~\thesisyear, \thesiscopyrightholder
    \end{center}}
    \vfill \strut
    \newpage
    \endgroup}
\newcommand{\thesiscopyrightholder}{\thesisauthor}

\newenvironment{thesisabstract}{
     \addcontentsline{toc}{chapter}{\thesisabstracthead}
     \begin{doublespace}
     \begin{center}
%\vbox to 18pt{}
ABSTRACT OF THE \@uppercase{\thesistype} \\
%\vspace{12pt}
\thesistitle \\
by \\
\thesisauthor \\
\thesisdegree\ in \thesisfield \\
        Washington University in St.\ Louis, \thesisyear \\
        Professor \thesischair, Chair
     \end{center}
     %\vspace{-18pt}
     }{ \end{doublespace}
     \newpage}   
\newcommand{\thesisabstracthead}{Abstract}

\renewcommand{\listoffigures}{%
  \chapter*{\listfigurename}%
  \@starttoc{lof}%
}

\renewcommand{\listoftables}{%
  \chapter*{\listtablename}%
  \@starttoc{lot}%
}

\renewcommand\contentsname{Table of Contents} 

\renewcommand{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
                    
\newif\if@appendix\@appendixfalse
\renewcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}
  \@appendixtrue
  % ensure appendices start on new page, and make page numbers appear in brackets
  \newpage
  \pagestyle{fancy}
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[C]{[\thepage]}
  }

\newlength{\appendixhspace}
\setlength{\appendixhspace}{1.0in}
\addtolength{\appendixhspace}{1.1em}

\def\wrappedappendix#1#2{%
  \refstepcounter{chapter}%
  \addcontentsline{toc}{chapter}%
  {\hbox to \appendixhspace{\appendixname\ \thechapter \hfill} #1}%
  \@makechapterhead{#2}%
}

\providecommand{\texorpdfstring}[2]{{#1}}    % Added by Michael Hall

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \if@appendix
                           \addcontentsline{toc}{chapter}%
                                   %{\hbox to \appendixhspace{\appendixname\ \thechapter \hfill} #1}%
                                   %{\hbox to \appendixhspace{\appendixname\ \protect\numberline{\thechapter}\hfill}#1}%
                                   {\texorpdfstring{\hbox to \appendixhspace{\appendixname\ \protect\numberline{\thechapter:}\hfill}#1}
                                         {\appendixname\ #1}}     % Modified by Michael Hall
                         \else
                           \addcontentsline{toc}{chapter}%
                                   {Chapter \protect\numberline{\thechapter:}#1}%
                         \fi
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\def\@makechapterhead#1{%
  \vspace*{\chaptervspace}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}

\def\@makeschapterhead#1{%
  \vspace*{\chaptervspace}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
  
\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak%
      \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}\hfill
      \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\renewenvironment{quote}
  {\begin{singlespace}\list{}{\rightmargin\leftmargin}%
    \item\relax}
  {\endlist\end{singlespace}}

\renewcommand{\bibname}{References}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
   \@openbib@code
           %\if@openbib
              %\advance\leftmargin\bibindent
              %\itemindent -\bibindent
              %\listparindent \itemindent
              %\parsep \z@
            %\fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      %\if@openbib
        %\renewcommand\newblock{\par}
      %\else
        %\renewcommand\newblock{\hskip .11em \@plus.33em %\@minus.07em}%
      %\fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
      \endlist}

\newcommand{\@uppercase}[1]{{\expandafter\uppercase\expandafter{#1}}}

% \timestamp generates the current time stamp in UTC, which can be used to mark a certain draft of the thesis text.
\newcount\hour \newcount\minute
\hour=\time  \divide \hour by 60
\minute=\time
\loop \ifnum \minute > 59 \advance \minute by -60 \repeat
\def\thesistime{\ifnum \hour<13 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute
                      \ifnum \hour<12 \ am\else \ pm\fi
         \else \advance \hour by -12 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute \ pm\fi}
\def\timestamp{\thesistime, \today}

\endinput