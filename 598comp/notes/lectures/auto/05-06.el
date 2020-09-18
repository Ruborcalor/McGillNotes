(TeX-add-style-hook
 "05-06"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("subfiles" "../598comp.tex")))
   (TeX-run-style-hooks
    "latex2e"
    "subfiles"
    "subfiles10")
   (LaTeX-add-environments
    '("subproof" LaTeX-env-args ["argument"] 0)))
 :latex)

