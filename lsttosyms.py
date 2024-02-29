import re
symbols = []
with open("sonic3k.lst", "r") as infile: 
    symbols = re.findall(r"(?:\([0-9]+\))?\s+([0-9]+)\/\s*([0-9A-F]+) : (?:=\$([0-9A-F.]+))? {6,20}([A-Za-z0-9_]+)\s*(:=|:|=|ds\.[bwl]|dc\.[bwl])(?:\s+([^\s;]+))?(?:\s+;(.+))?", infile.read())
    infile.close()
with open("sonic3k.syms", "w") as outfile: 
    for symbol in symbols:
        label = symbol[3]
        if not (label.startswith(".") or label.startswith("$$") or label.startswith("loc") or label.startswith("sub") or label.startswith("null") or label.startswith("_")):
            loc = int(symbol[1], 16)
            if loc == 0 and symbol[2] != "" and not "." in symbol[2]:
                loc = int(symbol[2], 16)
            if label.startswith("z") or label.startswith("cf") and not label.startswith("z80"): 
                loc += 0xA00000
            outfile.write(hex(loc & 0xFFFFFFFF)[2:].zfill(8) + " " + label)
            suffix = symbol[4]
            if suffix.startswith("ds."):
                if symbol[5] == "1":
                    outfile.write(":" + suffix[3])
                else:
                    outfile.write(":" + suffix[3] + ";" + symbol[5])
            elif (suffix.startswith(":") or suffix.startswith("dc.")) and symbol[2] != "" and not label[0].islower():
                outfile.write(":")
            outfile.write("\n")
