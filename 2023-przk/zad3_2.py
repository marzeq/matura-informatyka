def b(a: int, x: int, M: int) -> int:
    if x == 0:
        return 1
    elif x % 2 == 0:
        half = b(a, x // 2, M)
        return (half * half) % M
    else:
        return (a * b(a, x - 1, M)) % M
