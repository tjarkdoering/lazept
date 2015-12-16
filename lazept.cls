\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lazept}[2015/12/16 Class for simple recipe formatting]

\LoadClass[a4paper]{article}

%% page layout

\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2cm]{geometry} % geometry
\pagestyle{empty} % no pagenumbers

%% for the name of the dish, subtitle, etc.


\newcommand{\dish}[2]{
  \noindent\huge{\textbf{#1}} \\ \Large{\textit{#2}}
}


%% environment for ingredients

\newenvironment{ingredients}
{\vspace{2ex}\par\noindent\textbf{Zutaten }\hrulefill\vspace{1ex}}
{×}

\newcommand{\ing}[2]{
\indent{#1} \quad {#2 \\}
}

%% environment for utensils

\newenvironment{utensils}
{{\vspace{2ex}\par\noindent\textbf{Utensilien }\hrulefill\par}}
{×}

%% environment for preparation

\newenvironment{preparation}
{{\vspace{2ex}\par\noindent\textbf{Zubereitungö }\hrulefill\par}}
{×}


%% custom commands


