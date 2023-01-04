\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page

\RequirePackage{csquotes} % bibliographie
\RequirePackage[ % bibliographie
backend=biber,
style=alphabetic,
]{biblatex}

\RequirePackage[norelsize, linesnumbered, ruled, lined, boxed, commentsnumbered]{algorithm2e} % pseudo code
\SetKwComment{Comment}{/* }{ */} % commentaire dans algorithme

\RequirePackage{wrapfig} 

% package pour le code
\RequirePackage{listings}
\RequirePackage{xcolor}
\definecolor{comment}{RGB}{214,6,248}
\definecolor{number}{RGB}{163,122,204} % ne marche pas
\definecolor{string}{RGB}{134,179,0} 
\definecolor{backcolour}{RGB}{252,252,252}
\definecolor{Built-in constants}{RGB}{255,170,51} % def, for, is, ...
\definecolor{Function name}{RGB}{242,174,73}
\definecolor{Entity name}{RGB}{34,164,230}
\definecolor{Function arguments}{RGB}{163,122,204}

\lstset{
	language=Python,
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{comment},
    keywordstyle=\color{Built-in constants},
    numberstyle=\tiny\color{number},
    stringstyle=\color{string},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=true,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
	literate=
		{²}{{\textsuperscript{2}}}1
		{⁴}{{\textsuperscript{4}}}1
		{⁶}{{\textsuperscript{6}}}1
		{⁸}{{\textsuperscript{8}}}1
		{€}{{\euro{}}}1
		{é}{{\'e}}1
		{è}{{\`{e}}}1
		{ê}{{\^{e}}}1
		{ë}{{\¨{e}}}1
		{É}{{\'{E}}}1
		{Ê}{{\^{E}}}1
		{û}{{\^{u}}}1
		{ù}{{\`{u}}}1
		{â}{{\^{a}}}1
		{à}{{\`{a}}}1
		{á}{{\'{a}}}1
		{ã}{{\~{a}}}1
		{Á}{{\'{A}}}1
		{Â}{{\^{A}}}1
		{Ã}{{\~{A}}}1
		{ç}{{\c{c}}}1
		{Ç}{{\c{C}}}1
		{õ}{{\~{o}}}1
		{ó}{{\'{o}}}1
		{ô}{{\^{o}}}1
		{Õ}{{\~{O}}}1
		{Ó}{{\'{O}}}1
		{Ô}{{\^{O}}}1
		{î}{{\^{i}}}1
		{Î}{{\^{I}}}1
		{í}{{\'{i}}}1
		{~} {$\sim$}{1}
		{Í}{{\~{Í}}}1,
	keywords=[2]{IND, IND_C, groupe_ind_c_obj, b_lower, b_upper,
		b_boundary, diff_list, POS, POS_C, NEG_C, reduct, core, 
		dependance_attributs, dependance_attributs, quickReduc, drop, len, 
		groupby, append, remove, break, copy, format},
	keywordstyle={[2]\color{Function name}\bfseries},
	keywords=[3]{list, set, pandas, pd, DataFrame, fractions, Fraction, 
		numpy, np, seaborn, sns, matplotlib, pyplot, plt, 
		sklearn.datasets, sklearn.model_selection, 
		sklearn.preprocessing, LabelBinarizer, 
		sklearn.pipeline},
	keywordstyle={[3]\color{Entity name}\bfseries},
	keywords=[4]{df, obj, DS, ind_c, d, C, d_value, bupper, blower,
		},
	keywordstyle={[4]\color{Function arguments}\bfseries},
}

% -- Liste des mots couramment utilisés -- 
\newcommand\rst{\textit{Rough Set Theory - RST }}
\newcommand\ind{\textit{Indiscernibility Relation }}
\newcommand\blower{\textit{B-lower approximation }}
\newcommand\bupper{\textit{B-upper approximation }}
\newcommand\bboundary{\textit{B-boundary region }}
\newcommand\posreg{\textit{Positive Region }}
\newcommand\negreg{\textit{Negative Region }}
\newcommand\quickreduct{\textit{QuickReduct }}
\newcommand\reduct{\textit{Reduct }}
\newcommand\core{\textit{Core }}
%
\newcommand\headache{\textit{\textbf{Headache }}}
\newcommand\musclepain{\textit{\textbf{Muscle-pain }}}
\newcommand\temperature{\textit{\textbf{Temperature }}}
% 
\newcommand\panda{\textbf{Panda }}
\newcommand\numpy{\textbf{Numpy }}
\newcommand\df{\textbf{DataFrame }}
%
\newcommand\str{chaîne de caractères }

%-------------------- Informations sur le rapport ----------------------

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.15]{logos/university.jpg}} %Affichage de l'image au top de la page
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{Rapport - \textbf{\titre}}
\lfoot{\UE}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

	\centering %Centraliser le contenu
	\includegraphics[width=0.7\textwidth]{logos/university.jpg}\par\vspace{1cm} %Insertion du logo
	{\scshape\LARGE Université Versailles Saint-Quentin en Yvelines\par} %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\Large \UE \\ \sujet \\ Rapport\par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 3cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Élève :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Enseignant :}} \\
		 \enseignant \\
		\end{flushright}
	\end{minipage}\\[4cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}

\newcommand{\biblioteque}{
\addbibresource{bibliographie.bib} %Imports bibliography file
}