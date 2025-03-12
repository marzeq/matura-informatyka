import zad3

words = zad3.read_data()

n = 0
for w in words:
    for i, ch in enumerate(w):
        if ch == "k" and i < len(w) - 2 and w[i + 2] == "t":
            n += 1
            break

print(n)
