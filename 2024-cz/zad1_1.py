n = 179
w, k = 4, 5
bchs = bin(n)[2:]

i = 0
for _ in range(w):
    for _ in range(k):
        print(bchs[i], end="")
        if i < len(bchs) - 1:
            i += 1
        else:
            i = 0
    print()
