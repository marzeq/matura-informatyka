def bot_r_bin(w: int, k: int, n: int) -> int:
    def helper(i: int, x: int) -> int:
        if i == 0:
            return x % 2

        if x >> 1 != 0:
            return helper(i - 1, x >> 1)
        else:
            return helper(i - 1, n)

    return helper(w * k, n)
