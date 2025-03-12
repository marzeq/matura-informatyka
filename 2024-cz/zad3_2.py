import zad3

words = zad3.read_data()


def rot13(ch: str) -> str:
    indx = ord(ch) - ord("a")
    rotated = (indx + 13) % (ord("z") - ord("a") + 1)

    return chr(rotated + ord("a"))


def srot13(s: str) -> str:
    return "".join(rot13(ch) for ch in s)


n = 0
maxlenw = ""
for w in words:
    if w[::-1] == srot13(w):
        n += 1
        if len(w) > len(maxlenw):
            maxlenw = w
print(n, maxlenw)
