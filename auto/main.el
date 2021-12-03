(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "twosides" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "tex/lihapullat_ruotsi/resepti"
    "book"
    "bk11"
    "fontenc"
    "subfiles"
    "cuisine"
    "csvsimple"))
 :latex)

