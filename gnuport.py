import os
import sys
import re

def definesub(match):
    if match.groups()[0] == "E": return f"{match.groups()[0]} {match.groups()[1]}"
    else: return f".set {match.groups()[0]} {match.groups()[1]}"

def regsub(match):
    # if (match.groups()[1].startswith("(")):
    #     if (match.groups()[0] == "-"): return f"%{match.groups()[1][1:3]}@-"
    #     if (match.groups()[0] != ""): return f"apc@({match.groups()[0]},%{match.groups()[1][1:3]})"
    #     elif (match.groups()[2] == "+"): return f"%{match.groups()[1][1:3]}@+"
    #     else: return f"%{match.groups()[1][1:3]}@"
    # else:
    return f"{match.groups()[0]}%{match.groups()[1]}"

def immsub(match):
    return f"({match.groups()[0]}):{match.groups()[1]}"

def commsub(match):
    return f"/* {match.groups()[0]} */"

def tmpsub(match):
    return f"{match.groups()[0]} = ."

def gnuport(srcname: str, dstname: str):
    src = open(srcname, "r")
    string: str = src.read()
    src.close()
    string = re.sub(".asm", ".S", string)
    string = re.sub("dc\\.b", ".byte", string)
    string = re.sub("dc\\.w", ".word", string)
    string = re.sub("dc\\.l", ".long", string)
    string = re.sub("\\.b	", "b	", string)
    string = re.sub("\\.w	", "w	", string)
    string = re.sub("\\.l	", "l	", string)
    string = re.sub("\\.s	", "s	", string)
    string = re.sub("\\$", "0x", string)
    # string = re.sub("#", "", string)
    string = re.sub("0x0x([^:]+):", tmpsub, string)
    # string = re.sub("\\.([^:]+):", tmpsub, string)
    string = re.sub("EQU", ".equ", string)
    # string = re.sub("([^\\s=\\/]+)\\s*=\\s*(.*)", definesub, string)
    # string = re.sub("(-?|[^\\(adps]+)(\\(?(?:(?:(?:d|a)[0-7])|pc|sp)\\)?)(\\+?)", regsub, string)
    string = re.sub("([^a-zA-Z])((?:(?:(?:d|a)[0-7])|pc|sp))", regsub, string)
    string = re.sub("\\(([^\\)]+)\\)\\.?((?:b|w|l))", immsub, string)
    string = re.sub("binclude", ".incbin", string)
    string = re.sub("include", ".include", string)
    string = re.sub("even", ".balig 2", string)
    string = re.sub("align", ".balig", string)
    string = re.sub(".balig", ".balign", string)
    string = re.sub("macro", ".macro", string)
    string = re.sub("endm", ".endm", string)

    string = re.sub(";(.*)", commsub, string)
    dst = open(dstname, "w")
    dst.write(string)
    dst.close()

re.find
for path, dirs, files in os.walk("."):
    for f in [fil for fil in files if fil.endswith(".asm")]:
        gnuport(os.path.join(path, f), os.path.join(path, f.replace(".asm", ".S")))
