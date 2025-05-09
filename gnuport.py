import os
import sys
import re

instr_regex = r"^[^\n]\s+([^\s]+)\s+([^\s,]+)(?:\s*,\s*([^\s]+))?" # \s(?:;([^\n]+))?
alabel_regex = r"^([^:\s]+):"
rlabel_regex = r"^([+-]+)"
comment_regex = r"^\s*;([^\n]+)"

def regprefix(match): return f"%{match.group(0)}"

def include(match):
    convert(match.group(1), match.group(1).replace(".asm", ".S").replace("%", ""))
    new = match.group(1).replace(".asm", ".S").replace("%", "")
    return f".include \"{new}\""

def tmplabdef(match):
    return f"{len(match.group(1))}:"

def tmplabref(match):
    if match.group(1)[0] == "+": return f"{len(match.group(1))}f"
    elif match.group(1)[0] == "-": return f"{len(match.group(1))}b"
    return ""

def macro(match):
    return f".macro {match.group(1)} "

def comment(match):
    return f"/*{match.group(1)}*/"

def convline(line: str) -> str:
    line = re.sub(r"dc\.b\s+\"", ".ascii \"", line)
    line = re.sub(r"dc\.b", ".byte", line)
    line = re.sub(r"dc\.w", ".word", line)
    line = re.sub(r"dc\.l", ".long", line)
    line = re.sub(r"ds\.b\s+", ".space ", line)
    line = re.sub(r"ds\.w\s+", ".space 2*", line)
    line = re.sub(r"ds\.l\s+", ".space 4*", line)
    line = re.sub(r"\$\$", ".", line)
    line = re.sub(r"\$", "0x", line)
    line = re.sub(r";", "//", line)
    line = re.sub(r"\.b(?=\s)", "b", line)
    line = re.sub(r"\.w(?=\s)", "w", line)
    line = re.sub(r"\.l(?=\s)", "l", line)
    line = re.sub(r"\.s(?=\s)", "s", line)
    line = re.sub(r"\)\.w", ")", line)
    line = re.sub(r"\)\.l", ")", line)
    line = re.sub(r"\)w", ")", line)
    line = re.sub(r"\)l", ")", line)
    line = re.sub(r"(a[0-7]|d[0-7]|usp|sp|sr)(?=[\s\)\,\-\/])", regprefix, line)
    line = re.sub(r"j%sr", "jsr", line)
    line = re.sub(r"rept(?=\s)", ".rept", line)
    line = re.sub(r"macro(?=\s)", ".macro", line)
    line = re.sub(r"endm(?=\s)", ".endm", line)
    line = re.sub(r"align(?=\s)", ".align", line)
    line = re.sub(r"if(?=\s)", ".if", line)
    line = re.sub(r"el.if(?=\s)", ".elif", line)
    line = re.sub(r"else(?=\s)", ".else", line)
    line = re.sub(r"end.if(?=\s)", ".endif", line)
    line = re.sub(r"binclude(?=\s)", ".incbin", line)
    line = re.sub(r"include \"([^\"]+)\"", include, line)
    line = re.sub(r"^([-+]+)", tmplabdef, line)
    line = re.sub(r"(?<=[ \t])([-+]+)", tmplabref, line)
    line = re.sub(r"([^\.\s]+)\s+\.macro\s+", macro, line)
    line = re.sub(r"//([^\n]+)", comment, line)
    return line

def convert(srcname: str, dstname: str):
    src = open(srcname, "r")
    lines = src.readlines()
    src.close()
    dst = open(dstname, "w")
    for line in lines:
        dst.write(convline(line))
    dst.close()

if __name__ == "__main__":
    convert(sys.argv[1], sys.argv[1].replace(".asm", ".S"))

VRAM = 0
DMA = 0


x = ((((VRAM&DMA)&3)<<30)|((0x0000&0x3FFF)<<16)|(((VRAM&DMA)&0xFC)<<2)|((0x0000&0xC000)>>14))
((0x9400|((((length)>>1)&0xFF00)>>8))<<16)|(0x9300|(((length)>>1)&0xFF))
((0&1)<<15)+((0&3)<<13)+(0x33&tile_mask)