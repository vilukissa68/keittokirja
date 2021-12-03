(TeX-add-style-hook
 "style"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "paperheight=20cm" "paperwidth=20cm" "margin=2cm" "heightrounded") ("hyperref" "hidelinks" "colorlinks=false") ("montserrat" "defaultfam" "tabular" "lining" "alternates") ("titlesec" "compact")))
   (TeX-run-style-hooks
    "xkeyval"
    "marvosym"
    "geometry"
    "imakeidx"
    "hyperref"
    "xcolor"
    "fancyhdr"
    "graphicx"
    "wrapfig"
    "floatrow"
    "tikz"
    "eso-pic"
    "transparent"
    "lettrine"
    "polyglossia"
    "montserrat"
    "enumitem"
    "titlesec"
    "units"
    "tabulary")
   (TeX-add-symbols
    '("info" 1)
    '("photo" 1)
    '("recipe" 2)
    '("robot" 1)
    '("cooltime" 1)
    '("people" 1)
    '("baketime" 1)
    '("cooktime" 1)
    '("preptime" 1)
    '("recette" 1))
   (LaTeX-add-index-entries
    "#1")
   (LaTeX-add-pagestyles
    "plain"
    "empty"))
 :latex)

