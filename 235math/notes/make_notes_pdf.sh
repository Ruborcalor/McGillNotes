#!/usr/bin/env bash

#imports="$(ls lectures/*.tex -1 | sed -e 's/\.tex$/\}/;s/^/\\import\{lectures\/\}\{/')"
lecture="$(ls lectures/*.tex -1 | sed 's/\//\\\//' | sed -e 's/\.tex$/\\\}/;s/^/\\\\\import\\{\\}\\\{/')"

echo $(cat test_main.tex | sed '/^% Lecture Imports/,/^% Imports End/{/^%/!{/^\$/!d}}' | sed "s/% Lecture Imports %/% Lecture Imports % \n"$lecture"/")
#echo "$imports"


#echo "$imports"

#sed main.


