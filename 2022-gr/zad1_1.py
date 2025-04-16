from zad1 import read_data

games = read_data()

ctr = 0
for i in range(len(games) - 1):
    if games[i] != games[i + 1]:
        ctr += 1

print(ctr)
