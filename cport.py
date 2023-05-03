import os
import sys
import re

instrregx = r"^\s*([^\s\.:]+?)(i|q|a)?(?:\.(b|w|l|s))?\s+(?:([^,\s]+),)?([^\s]+)"
labelregx = r"^([^:]+):"

instrformats = {
    "abcd": "// TODO: abcd {x},{y} was here, fix",
    "add": "{y} += {x};",
    "and": "{y} &= {x};",
    "asl": "{y} <<= {x};",
    "asr": "{y} >>= {x};",
    "bcc": "// TODO: bcc {y} was here, fix",
    "bcs": "// TODO: bcs {y} was here, fix",
    "bvc": "// TODO: bvc {y} was here, fix",
    "bvs": "// TODO: bvs {y} was here, fix",
    "beq": "if (cres == 0) goto {y};",
    "bne": "if (cres != 0) goto {y};",
    "bge": "if ((int)cres >= 0) goto {y};",
    "bgt": "if ((int)cres > 0) goto {y};",
    "bhs": "if (cres >= 0) goto {y};",
    "bh": "if (cres > 0) goto {y};", #supposed to be bhi, but regex breaks, works fine tho
    "ble": "if ((int)cres <= 0) goto {y};",
    "blt": "if ((int)cres < 0) goto {y};",
    "bls": "if (cres <= 0) goto {y};",
    "blo": "if (cres < 0) goto {y};",
    "bm": "if (cres < 0) goto {y};",
    "bpl": "if (cres >= 0) goto {y};",
    "bchg": "cres |= {y} & ~(1 << {x}); {y} ^= cres;",
}

def cport(srcname: str, dstname: str):
    src = open(srcname, "r")
    string: list[str] = src.readlines()
    dstr: str = "static unsigned char cres;\nstatic unsigned int d0".join([f", d{i+1}" for i in range(7)]).join([f", a{i}" for i in range(8)]) + ";\n\n"
    src.close()


    dst = open(dstname, "w")
    dst.write(dstr)
    dst.close()