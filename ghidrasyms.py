f = askFile("Open .syms file", "Ok")
for line in file(f.absolutePath):   
    loc, label = line.split()
    loc = long(loc, 16)
    if ':' in label:
        label, ty = label.split(":")
        if ty == "":
            createLabel(toAddr(loc), label, False)
        else:
            createLabel(toAddr(loc), label, False)
    else:
        createLabel(toAddr(loc), label, False)
