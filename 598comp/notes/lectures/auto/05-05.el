(TeX-add-style-hook
 "05-05"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "class=scrartcl" "crop=false")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10")
   (LaTeX-add-environments
    '("subproof" LaTeX-env-args ["argument"] 0)))
 :latex)

