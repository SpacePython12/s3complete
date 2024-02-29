def divmodtotempo(div: int, mod: int) -> float:
    return ((60.0)/(256.0/mod))


print(divmodtotempo(1, 31)*12)