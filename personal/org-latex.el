(setq org-latex-classes
      '(("article"
         "
%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode

\\documentclass[12pt,a4paper]{article}
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
\\usepackage[top=1in,bottom=1in,left=0.8in,right=0.8in]{geometry}
\\usepackage{xcolor}
\\definecolor{link}{HTML}{0366D6}
\\definecolor{lightgray}{rgb}{0.83, 0.83, 0.83}
\\definecolor{mintcream}{rgb}{0.96, 1.0, 0.98}

\\usepackage{fontspec}
\\newfontfamily\\zhfont[BoldFont=PingFang SC]{PingFang SC}
\\newfontfamily\\zhpunctfont{PingFang SC}
\\setmainfont{Times New Roman}
\\setsansfont{Helvetica/Arial}
\\setmonofont{Courier New}
\\usepackage{zhspacing}
\\zhspacing
\\usepackage{indentfirst}

\\usepackage{hyperref}
\\hypersetup{
  colorlinks=true,
  linkcolor=link,
  citecolor=[rgb]{0,0.47,0.68},
  filecolor=link,
  urlcolor=link,
  pagebackref=true,
  linktoc=all,
}

\\usepackage{minted}
\\setminted{
  frame=leftline,
  bgcolor=mintcream,
  fontsize=\\scriptsize,
  tabsize=2,
  breaklines,
  framesep=2mm,
  baselinestretch=1.2,
}
"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
        ))

(setq org-latex-default-packages-alist
      '(("AUTO" "inputenc" t
         ("pdflatex"))
        ("" "float" t)
        ("" "color" t)
        ("" "multicol" t)
        ("" "graphicx" t)
        ("" "grffile" t)
        ("" "longtable" nil)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "textcomp" t)
        ("" "amssymb" t)
        ("" "capt-of" nil)
        ))

;; minted required:
;; 1. xelatex -shell-escape
;; 2. pip install Pygments
(setq org-latex-listings 'minted)

(setq org-latex-logfiles-extensions
      '("aux" "idx" "log" "out" "toc" "nav" "snm" "vrb"))

(setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
