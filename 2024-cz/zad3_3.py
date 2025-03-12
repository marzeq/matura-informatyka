import zad3

words = zad3.read_data()

for w in words:
    letters = set(w)

    for l in letters:
        if w.count(l) > len(w) / 2:
            print(w)
            break
