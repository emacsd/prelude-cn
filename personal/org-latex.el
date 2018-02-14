(setq org-latex-classes
      '(("article"
         "
\\documentclass[12pt,a4paper]{article}
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
\\usepackage[top=1in,bottom=1in,left=1.25in,right=1.25in]{geometry}
\\usepackage{float}
\\usepackage{fontspec}
\\newfontfamily\\zhfont[BoldFont=PingFang SC]{PingFang SC}
\\newfontfamily\\zhpunctfont{PingFang SC}
\\setmainfont{Helvetica Neue}
\\usepackage{indentfirst}
\\usepackage{zhspacing}
\\zhspacing

\\usepackage{minted}

\\usepackage{hyperref}
\\hypersetup{
 colorlinks=true,
  linkcolor=[rgb]{0,0.37,0.53},
  citecolor=[rgb]{0,0.47,0.68},
  filecolor=[rgb]{0,0.37,0.53},
  urlcolor=[rgb]{0,0.37,0.53},
  pagebackref=true,
  linktoc=all,}
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
