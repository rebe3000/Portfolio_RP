% A simple CV class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplecv}[2020/07/20 v0.1 A simple CV class]

\LoadClass[10pt]{article}

\setlength{\parindent}{0pt}

\RequirePackage[scaled]{helvet}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\definecolor{lightblue}{RGB}{0, 150, 180}
\definecolor{emphblue}{RGB}{0, 120, 150}
\colorlet{emphcolor}{emphblue}
\colorlet{body}{black!80!white}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\newcommand{\setfooter}[1]{
  \pagestyle{fancy}
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \setlength{\footskip}{18pt}
  \cfoot{{\color{lightblue}\thepage\ of \pageref{LastPage}}}
  \rfoot{{\color{lightblue}#1}}
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\personalinfo}[3]{
  \centerline{
    \faMapMarker~#1
    \hspace{2pt}
    \faEnvelope~\href{mailto:#2}{#2}
    \hspace{2pt}
    \faMobile~#3
  }
}

\newcommand{\cvsection}[1] {
  \medskip
  {\Large\scshape\raggedright{\color{emphcolor}{#1}}\par}\medskip
  \vspace{-\baselineskip}
  {\color{lightblue}\noindent\rule\linewidth{1pt} \par}
  \smallskip
}

\newcommand{\cvevent}[4]{
  \noindent\makebox[0.13\linewidth][l]{\faCalendar~#1}%
  \large\makebox[0.84\linewidth][l]{#2}
  \par\smallskip
  \noindent\makebox[0.13\linewidth][l]{}%
  \makebox[0.58\linewidth][l]{{\footnotesize\textbf{\color{emphcolor}#3}}}%
  \small\makebox[0.26\linewidth][l]{\faMapMarker~#4}\par
  \vspace{1pt}
  \normalsize
}

\newcommand{\cvitem}[1]{
  \noindent\hspace{0.13\linewidth}%
  \makebox[1em][c]{\faAngleDoubleRight}%
  \parbox[t]{\dimexpr0.84\linewidth-1em\relax}{#1}\par
  \smallskip
}

\newcommand{\cvitemblue}[1]{
  \cvitem{#1}
  \smallskip
}

\newcommand{\cvitemredtwo}[1]{
  \noindent\hspace{0.02\linewidth}
  \makebox[1em][c]{\faAngleDoubleRight}
  \parbox[t]{0.93\linewidth}{#1}\par
  \smallskip
}

\newcommand{\cvsubitem}[1]{
  \noindent\hspace{0.2\linewidth}\hspace{3mm}
  \makebox[1em][c]{\faAngleDoubleRight}
  \parbox[t]{0.75\linewidth}{#1}\par
  \smallskip
}

\newcommand{\cvskill}[2]{
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{#1}
  \makebox[0.3\linewidth][l]{
    \small
    \foreach \x in {1,...,10}{
      {\ifnumgreater{\x}{#2}{\color{body!30}}{\color{emphcolor}}\faCircle}
    }
  }\par
  \smallskip
}

\newcommand{\cvlangitem}[2]{
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{#1}
  \makebox[0.3\linewidth][l]{#2}
  \par\smallskip
}

\newcommand{\cvreferee}[6]{
  {
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{
    \href{#6}{\large{#1}}
    \normalsize\hspace{2ex}\faMortarBoard~#2
  }\par\smallskip
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faInstitution}\makebox[0.6\linewidth][l]{#3}\par
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faEnvelope}\makebox[0.6\linewidth][l]{\href{mailto:#4}{#4}}\par
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faPhone}\makebox[0.6\linewidth][l]{#5}\par
  \medskip
  }
}
