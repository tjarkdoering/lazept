\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lazept}[2015/12/16 Class for simple recipe formatting]

\LoadClass[a4paper]{article}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel} 
\usepackage[x11names]{xcolor}
\usepackage{multicol}
\usepackage{lmodern}
\usepackage{textcomp}
\usepackage{etoolbox}   % for booleans and much more
\usepackage{verbatim}   % for the comment environment


%% page layout

\RequirePackage[left=2.2cm,right=2.2cm,top=2.2cm,bottom=2cm]{geometry}		% geometry
\pagestyle{empty} 	% no pagenumbers

%% intelligence

% \newif\ifother
% \othertrue % or \otherfalse
% 
% \newenvironment{test}{}{}

%% for the name of the dish, subtitle, etc.


\newcommand{\dish}[2]{
  \noindent\huge{\textbf{#1}}
  \begin{flushright}
   \LARGE{\textit{#2}} \vspace{0.5cm} 
  \end{flushright}
  \large		% commands following text sizw, ugly workaround?
}


%% environment for ingredients, item for ingredient, divider for ingredients in diffrent recipe parts

\newenvironment{ingredients}[1]
{\vspace{2ex}\par\noindent\textbf{Zutaten }{#1 }\textcolor{PaleVioletRed3}{\hrulefill} \vspace{1ex}}
{}

\newcommand{\ing}[2]{
\indent \makebox[1cm][r]{#1} \hspace{0.cm} \makebox[0pt][l]{#2} \\
%\indent{#1} \quad {#2 \\}
}

\newcommand{\ingcat}[1]{
\noindent {#1}: \vspace{0.5ex}
}

%% environment for utensils

\newenvironment{utensils}
{\vspace{2ex}\par\noindent\textbf{Utensilien }\textcolor{PaleVioletRed3}{\hrulefill} \vspace{1ex}}
{\othertrue}

%% environment for pre-preparation

\newenvironment{prep}
{\vspace{2ex}\par\noindent\textbf{Vorbereitung}  \textcolor{PaleVioletRed3}{\hrulefill}\vspace{1ex}}
{}


%% environment for preparation

\newenvironment{preparation}[1]
{\vspace{2ex}\par\noindent\textbf{Zubereitung}  \textcolor{PaleVioletRed3}{\hrulefill} Dauer: {#1} \vspace{1ex}}
{}

