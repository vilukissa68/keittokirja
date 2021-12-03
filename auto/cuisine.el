(TeX-add-style-hook
 "cuisine"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "paperheight=29.7cm" "paperwidth=21cm" "margin=2cm" "heightrounded") ("hyperref" "hidelinks" "colorlinks=false") ("montserrat" "defaultfam" "tabular" "lining" "alternates") ("titlesec" "compact")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
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
    "empty")
   (LaTeX-add-xcolor-definecolors
    "ocre")
   (LaTeX-add-polyglossia-langs
    '("french" "defaultlanguage" "")))
 :latex)

