% JIPS Journal Template.
%
% FILENAME: jips.cls
%  
% SOURCE: See https://github.com/LokiResearch/JIPS-LatexTemplate for latest official version.
%
% NOTE: If you wish to edit this document, please list edits properly
% in the CHANGELOG section and not scattered through the code.
% 
% 2019-11-29 Creation by Marc Baloup
%
% CHANGELOG: 
%
% 
%
% LICENSE: Public domain: You are free to do whatever you want with
% this template.  If you improve this in any way, please submit a
% pull request to the Github repository.

\typeout{}

\typeout{Document Class JIPS}

\typeout{Available at https://github.com/LokiResearch/JIPS-LatexTemplate.}

\typeout{}

\typeout{- <November 29, 2019> Created by Marc Baloup.}

\typeout{}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jips}[2019/11/29 JIPS]

\LoadClass[11pt]{article}

\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}

\RequirePackage[bookmarksnumbered,unicode,colorlinks=false,pdfborder={0 0 0},breaklinks=true]{hyperref}
\RequirePackage{graphicx}
\RequirePackage[prologue]{xcolor}
\RequirePackage{colortbl}
\RequirePackage[a4paper, left=2.5cm, right=2.5cm, top=1cm, bottom=1.25cm, head=82pt, headsep=-13pt, foot=60pt, includeheadfoot]{geometry}
\RequirePackage{lastpage}
\RequirePackage{tikz}

\definecolor{orangejips}{RGB}{245,80,47}
\definecolor{orange2jips}{RGB}{244,67,12}
\definecolor{darkorange2jips}{RGB}{163,43,7}
\definecolor{darkdarkorange2jips}{RGB}{81,21,4}
\definecolor{vlightbluejips}{RGB}{219,229,241}
\definecolor{lightbluejips}{RGB}{198,217,241}
\definecolor{bluejips}{RGB}{31,73,125}
\definecolor{darkbluejips}{RGB}{23,54,93}


\RequirePackage[no-math]{fontspec}
\setmainfont{Arial}[
  BoldFont=Arial Bold,
  ItalicFont=Arial Italic,
  BoldItalicFont=Arial Bold Italic
]
\setsansfont{Arial}[
  BoldFont=Arial Bold,
  ItalicFont=Arial Italic,
  BoldItalicFont=Arial Bold Italic
]
\renewcommand{\familydefault}{\sfdefault}
\defaultfontfeatures{Ligatures=TeX}
\newfontfamily\arialblackfont{Arial Black}
\newfontfamily\arialnarrowfont{Arial Narrow}[
  BoldFont=Arial Narrow Bold,
  ItalicFont=Arial Narrow Italic,
  BoldItalicFont=Arial Narrow Bold Italic
]


\RequirePackage{mathtools}

\RequirePackage[italic]{mathastext}


\RequirePackage{icomma}


\RequirePackage{caption, float}
\DeclareCaptionFormat{figcaption}{%
  \arialnarrowfont\fontsize{11pt}{12.5pt}\selectfont\color{orange2jips}\bfseries #1#2#3%
  \color{bluejips}\rule[21pt]{\textwidth}{0.5pt}%
  \vspace{-23pt}
}
\captionsetup[figure]{format=figcaption, name={Figure~}}
\captionsetup{position=top, labelsep=period, margin=\z@}


\RequirePackage[explicit]{titlesec}

\titleformat{\section}{\arialblackfont\fontsize{12pt}{12pt}\selectfont\color{darkbluejips}}{\thesection}{15pt}{\MakeUppercase{#1}}[%
  \vspace{1pt}
  {\color{darkdarkorange2jips}\titlerule[0.75pt]}%
  {\color{darkorange2jips}\titlerule[2.25pt]}%
  {\color{orange2jips}\titlerule[0.75pt]}]
\titlespacing{\section}{0pt}{8pt}{3pt}

\titleformat{\subsection}{\fontsize{11pt}{11pt}\selectfont\color{darkbluejips}}{\textbf{\thesubsection}}{15pt}{\textbf{#1}}[%
  {\color{orange2jips}\titlerule[1pt]}]
\titlespacing{\subsection}{0pt}{8pt}{2pt}

\titleformat{\subsubsection}{\arialnarrowfont\fontsize{11pt}{11pt}\selectfont\color{darkbluejips}}{\textbf{\textit{\thesubsubsection}}}{15pt}{{\bfseries\itshape #1}}
\titlespacing{\subsubsection}{0pt}{8pt}{0pt}

\RequirePackage[natbibapa]{apacite}
\renewenvironment{APACrefauthors}{%
  % total display width of the following line : 23.5pt (the length of \bibhang)
  \hspace{5.25pt}\begin{tikzpicture}\fill (0,0) -- (0,0.222) -- (0.111,0.111) -- cycle;\end{tikzpicture}\hspace{15.1pt}%
  \begingroup \APACrefauthstyle
}{\endgroup }
\setlength{\bibhang}{23.5pt}
\setlength{\bibsep}{0.5em}
\bibliographystyle{apacite}
\AtBeginDocument{%
  \renewcommand\doi[1]{\href{https://doi.org/#1}{\nolinkurl{#1}}}
  \urlstyle{same}


  \let\oldthebibliography\thebibliography
  \let\endoldthebibliography\endthebibliography
  \renewenvironment{thebibliography}[1]{
    \begin{oldthebibliography}{#1}
      \fontsize{10pt}{12pt}\selectfont
  }
  {
    \end{oldthebibliography}
  }
}


\newcommand\@infoJIPSVol{}
\newcommand\@infoJIPSNum{}
\newcommand\@infoJIPSArticleNum{}
\newcommand\@infoJIPSYear{}
\newcommand\@infoJIPSMonth{}
\newcommand\@infoJIPSPageBegin{}
\newcommand\@infoTitleFr{}
\newcommand\@infoTitleEn{}
\newcommand\@infoAuthors{}
\newcommand\@infoAbstractEn{}
\newcommand\@infoKeywordsEn{}
\newcommand\@infoAbstractFr{}
\newcommand\@infoKeywordsFr{}
\newcommand\@infoShortTitle{}
\newcommand\@infoShortAuthors{}
\newcommand\@infoJIPSSubmissionDate{}
\newcommand\@infoJIPSAcceptanceDate{}




\newcommand\JIPSVol[1]{
  \renewcommand\@infoJIPSVol{#1}
}
\newcommand\JIPSNum[1]{
  \renewcommand\@infoJIPSNum{#1}
}
\newcommand\JIPSArticleNum[1]{
  \renewcommand\@infoJIPSArticleNum{#1}
}
\newcommand\JIPSYear[1]{
  \renewcommand\@infoJIPSYear{#1}
}
\newcommand\JIPSMonth[1]{
  \renewcommand\@infoJIPSMonth{#1}
}
\newcommand\JIPSPageBegin[1]{
  \renewcommand\@infoJIPSPageBegin{#1}
}
\newcommand\TitleFr[1]{
  \renewcommand\@infoTitleFr{#1}
}
\newcommand\TitleEn[1]{
  \renewcommand\@infoTitleEn{#1}
}
\newcommand\ShortTitle[1]{
  \hypersetup{pdftitle = {#1}}
  \renewcommand\@infoShortTitle{#1}
}
\newcommand\Authors[1]{
  \renewcommand\@infoAuthors{#1}
}
\newcommand\ShortAuthors[1]{
  \hypersetup{pdfauthor = {#1}}
  \renewcommand\@infoShortAuthors{#1}
}
\newcommand\AbstractEn[1]{
  \renewcommand\@infoAbstractEn{#1}
}
\newcommand\KeywordsEn[1]{
  \renewcommand\@infoKeywordsEn{#1}
}
\newcommand\AbstractFr[1]{
  \renewcommand\@infoAbstractFr{#1}
}
\newcommand\KeywordsFr[1]{
  \renewcommand\@infoKeywordsFr{#1}
}
\newcommand\JIPSSubmissionDate[1]{
  \renewcommand\@infoJIPSSubmissionDate{#1}
}
\newcommand\JIPSAcceptanceDate[1]{
  \renewcommand\@infoJIPSAcceptanceDate{#1}
}



\newcommand\Author[1]{\vspace{5pt}{\fontsize{11pt}{11pt}\selectfont \color{orange2jips} \textbf{#1}}\\}
\newcommand\Affiliation[1]{\vspace{4pt}{\arialnarrowfont \fontsize{10pt}{0pt}\selectfont \color{darkbluejips} \textbf{#1}}\\}
\newcommand\Mail[1]{\vspace{4pt}{\arialnarrowfont \fontsize{10pt}{10pt}\selectfont \underline{\smash{#1}}}\\}




\renewcommand\maketitle{
  \setcounter{page}{\@infoJIPSPageBegin}
  \pagestyle{plain}

  \noindent \begin{minipage}[t]{15.95cm}
    \begin{flushright}
      \vspace{18pt}
      \arialblackfont \fontsize{16pt}{24pt}\selectfont \color{darkbluejips} \@infoTitleFr
    \end{flushright}
  \end{minipage}\hspace{6pt}{\color{orangejips} \vrule width 6pt}


  \noindent\hspace{-5pt}\begin{tabular}{ll}
    \cellcolor{lightbluejips}\begin{minipage}[t]{4.5cm}
      \begin{flushleft}
        \vspace{-6pt}
        \@infoAuthors
        \vspace{6pt}
      \end{flushleft}
    \end{minipage} &
    \begin{minipage}[t]{11.1cm}
      \begin{flushright}
        \arialnarrowfont \fontsize{12pt}{12pt}\selectfont \color{orange2jips} \textbf{\@infoTitleEn}
      \end{flushright}
      {\arialnarrowfont \fontsize{10pt}{11.5pt}\selectfont
        Abstract. \@infoAbstractEn
        \setlength{\parskip}{6pt}

        Key words: \@infoKeywordsEn
        \vspace{6pt}

        Résumé. \@infoAbstractFr

        Mots-clés : \@infoKeywordsFr
        \vspace{6pt}
      }
    \end{minipage}
    \\
  \end{tabular}

  \vspace{6pt}

  \noindent {\color{bluejips} \rule{\textwidth}{0.5pt}}\\
  \vspace{-22pt}
  \begin{center}{ \arialnarrowfont \fontsize{9pt}{9pt}\selectfont \color{darkbluejips} \textit{%
    Édité par Joëlle Coutaz, Université de Grenoble et Patrick Girard, Université de Poitiers\\
    \vspace{-3pt}
    Soumis le \@infoJIPSSubmissionDate\ – Accepté le \@infoJIPSAcceptanceDate}}
  \end{center}


  \newpage
  \pagestyle{content}
  \setlength{\parskip}{6pt}
  \setlength{\baselineskip}{12.5pt}

}







\RequirePackage{fancyhdr}
\pagestyle{plain}
\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \lhead{\hspace{-5pt}\includegraphics{jips_logo.pdf}\\ \vspace{4pt}}
  \rhead{{\arialblackfont \fontsize{12pt}{12pt}\selectfont \color{darkbluejips} Journal d’Interaction Personne-Système}\\
  {\arialnarrowfont \fontsize{11pt}{11pt}\selectfont \color{darkbluejips} Volume \@infoJIPSVol, Numéro \@infoJIPSNum, Article \@infoJIPSArticleNum, \@infoJIPSMonth\ \@infoJIPSYear, pages \@infoJIPSPageBegin\ à \pageref{LastPage}}\\
  {\arialnarrowfont \fontsize{11pt}{11pt}\selectfont \color{darkbluejips} \href{http://jips.episciences.org}{http://jips.episciences.org}}\\
  \vspace{13pt}
  {\color{bluejips} \rule{\textwidth}{1pt}}\\
  \vspace{-3pt}
  {\arialnarrowfont \fontsize{11pt}{13pt}\selectfont \color{orangejips} \textbf{Le journal de l’Association Francophone d’Interaction Homme-Machine}}\hspace{0.5mm}}
  \lfoot[L]{\begin{minipage}[b]{4.5cm}\includegraphics[width=4.5cm]{afihm_logo.pdf}\vspace{12pt}\end{minipage}}
  \rfoot[R]{\begin{minipage}[b]{11cm}
      \setlength{\baselineskip}{8pt}
      {\arialnarrowfont \fontsize{7pt}{7pt}\selectfont \color{bluejips} \textit{%
      Copyright AFIHM © \@infoJIPSYear, Aucun usage commercial ne peut en être fait sans l’accord des éditeurs ou archiveurs électroniques.
      Permission to make digital or hard copies of all or part of this work for personal or classroom use is granted without fee
      provided that copies are not made or distributed for profit or commercial advantage and that copies bear this notice and the
      full citation on the first page. Les articles de JIPS sont publiés sous licence Creative Commons Paternité 2.0 Générique.}}
      \vspace{9pt}
    \end{minipage}}
}


\fancypagestyle{content}{
  \fancyhf{}

  \newgeometry{left=2.5cm, right=2.5cm, top=1cm, bottom=1.25cm, head=1.5cm, headsep=0cm, foot=1.25cm, includeheadfoot}
  \renewcommand{\headrulewidth}{0pt}
  \lhead{{\arialnarrowfont \fontsize{8pt}{8pt}\selectfont \color{bluejips} \textit{\@infoShortTitle}}\\
  \vspace{-4pt}
  {\arialnarrowfont \fontsize{8pt}{8pt}\selectfont \color{bluejips} \textit{\@infoShortAuthors}}\\
  \vspace{8pt}}
  \rhead{{\arialnarrowfont \fontsize{8pt}{8pt}\selectfont \color{bluejips} \textit{\thepage}\\ \ \\
  \vspace{8pt}}}
  \lfoot{\hspace{11pt}\begin{minipage}[b]{1.5cm}\includegraphics[width=1.3cm]{afihm_logo.pdf}\end{minipage}}
  \cfoot{\vspace{-21pt}{\color{bluejips}\rule{\textwidth}{0.5pt}}}
  \rfoot{\begin{minipage}[b]{11cm}
    \begin{flushright}
      {\arialnarrowfont \fontsize{9pt}{9pt}\selectfont \color{darkbluejips} \textit{Journal d’Interaction Personne-Système - Vol. \@infoJIPSVol, Num. \@infoJIPSNum, \@infoJIPSMonth\ \@infoJIPSYear}}
      \vspace{1pt}
    \end{flushright}
  \end{minipage}\hspace{11pt}}
}




\newenvironment{ack}{%
  \section*{Remerciements}
  \fontsize{9pt}{9pt}\selectfont\itshape
}{
}


\newenvironment{JIPSBios}{%
  \section*{Biographie}
}{
}

\newcommand\JIPSBio[3]{

  \vspace{-9pt}
  \noindent\hspace{1mm}\begin{tabular}{p{3.4cm} p{11cm}}
    \vspace{0pt}
    \includegraphics[width=3.4cm]{#2}
    &
    \vspace{0pt}
    \begin{minipage}{11cm}
      \vspace{3pt}
      {\arialblackfont \fontsize{9pt}{9pt}\selectfont \color{orange2jips} #1}

      \vspace{7pt}\setlength{\baselineskip}{10pt}
      {\arialnarrowfont \fontsize{9pt}{9pt}\selectfont \color{darkbluejips} #3}

      \vspace{6pt}
    \end{minipage}
    \\
  \end{tabular}
  \vspace{-5pt}
}
