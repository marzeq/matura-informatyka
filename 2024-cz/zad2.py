ran = 0


def F(x: int) -> (int, int):
    global ran
    ran += 1

    if x == 0:
        return 0

    return 2 + F(x >> 1)
