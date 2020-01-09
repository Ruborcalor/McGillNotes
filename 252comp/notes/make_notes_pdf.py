#/usr/bin/env python3

import glob
files = (glob.glob('lectures/*.tex'))

print(files)
files.sort()
print(files)

new_file = []


f = open("main.tex", "r")
contents = f.readlines()
f.close()


inside = False

for line in contents:
    #print(inside)
    if "% Lecture Imports %" in line:
        inside = True
        new_file.append("% Lecture Imports %\n")

    if not inside:
        new_file.append(line)
        #print(line)

    if "% Imports End %" in line:
        inside = False
        for file in files:
            to_append = "\import{}{" + file.replace('.tex', '') + "}"
            new_file.append(to_append)
            new_file.append("\n")
            #print(to_append)
        new_file.append("% Imports End %\n")
        #print("% Imports End %")

f = open("main.tex", "w")
#print(new_file)
new_file = "".join(new_file)
f.write(new_file)
f.close()



        

