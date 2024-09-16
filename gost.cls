\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gost}[2015/10/04 GOST R 7.0.11-2011]

\LoadClassWithOptions{scrartcl}

% page margins
\RequirePackage[%
  left=25mm,%
  top=20mm,%
  right=10mm,%
  bottom=20mm,%
  footskip=32pt,
  headheight=32pt,
  a4paper%
]{geometry}

\KOMAoptions{%
  toc=sectionentrydotfill,%
  bibliography=totoc%
}

% line and paragraph spacing
\RequirePackage{setspace}
\setstretch{1.2}
\setlength{\parskip}{0pt}
\setlength{\parindent}{2.5em}

% page numbering
\RequirePackage{scrlayer-scrpage}
\cohead{\thepage}
\cofoot{}
\setkomafont{pagehead}{\scriptsize\mdseries\upshape}
\addtokomafont{sectionentry}{\rmfamily}
\pagestyle{scrheadings}

% section format and spacing
% N.B. We use 2 baseline skip here because we have one and half spacing
\RedeclareSectionCommand[%
    font=\LARGE\singlespacing\centering\rmfamily,%
    beforeskip=2\baselineskip,%
    tocnumwidth=0pt,%
    tocentrynumberformat=\gobbleentrynumber,%
    afterskip=2\baselineskip%
]{section}
\newcommand*\gobbleentrynumber[1]{}
\renewcommand*{\sectionformat}{}

\RedeclareSectionCommand[%
    font=\Large\singlespacing\centering\rmfamily,%
    beforeskip=2\baselineskip,%
    afterskip=2\baselineskip%
]{subsection}

\RedeclareSectionCommand[%
    font=\large\singlespacing\centering\rmfamily,%
    beforeskip=2\baselineskip,%
    afterskip=2\baselineskip%
]{subsubsection}

\RedeclareSectionCommand[%
    font=\normalsize\singlespacing\rmfamily,%
    beforeskip=0.5\baselineskip,%
    afterskip=0.5\baselineskip,%
    indent=0pt,
]{paragraph}


% % additional fields for title page
\newcommand*{\organization}[1]{\gdef\@organization{#1}}
\newcommand*{\manuscript}[1]{\gdef\@manuscript{#1}}
\newcommand*{\speciality}[1]{\gdef\@speciality{#1}}
\newcommand*{\degree}[1]{\gdef\@degree{#1}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\dissertation}[1]{\gdef\@dissertation{#1}}

\newcommand*{\@organization}[1]{organization is not set}
\newcommand*{\@manuscript}[1]{manuscript is not set}
\newcommand*{\@speciality}[1]{speciality is not set}
\newcommand*{\@degree}[1]{degree is not set}
\newcommand*{\@supervisor}[1]{supervisor is not set}
\newcommand*{\@dissertation}[1]{dissertation is not set}

% Title page template
\renewcommand*{\maketitle}{%
\begin{titlepage}%
  \centering
  \begin{spacing}{1}
    {\normalsize\bfseries\@organization\par}\vspace{20pt}%
    \begin{flushright}
    {\normalsize\itshape\@manuscript\par}%
    \end{flushright}%
    \vspace{80pt}
    {\large\bfseries\@author\par}\vspace{40pt}%
    {\LARGE\bfseries\@title\par}\vspace{25pt}%
    {\normalsize\@speciality\par}\vspace{50pt}%
    {\Large\bfseries\@dissertation\par}\vspace{38pt}%
    {\normalsize\@degree\par}\vspace{50pt}%
    \begin{flushright}%
    {\normalsize\@supervisor\par}%
    \end{flushright}%
    \vfill
    {\normalsize\@date\par}%
  \end{spacing}
\end{titlepage}%
}

% title page numbering
\newcommand{\maketitlepage}{%
  \pagenumbering{gobble}%
  \thispagestyle{empty}%
  \maketitle%
  \clearpage%
  \pagenumbering{arabic}%
  \setcounter{page}{2}%
}

%\AtBeginDocument{\maketitlepage}

% clear page before each section
\RequirePackage{etoolbox}
\pretocmd{\section}{\clearpage}{}{}

% \RequirePackage{hyperref}
% language settings
\RequirePackage[utf8]{inputenc}
% \RequirePackage[T1,T2A]{fontenc}
% \RequirePackage[russian, english]{babel}
% \RequirePackage{lmodern}