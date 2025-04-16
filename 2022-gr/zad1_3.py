from zad1 import read_data

games = read_data()

good_runs_A = []
good_runs_B = []
run_ctr = 1

for i in range(0, len(games) - 1):
    game_prev = games[i]
    game = games[i + 1]

    if game_prev == game:
        run_ctr += 1
    else:
        if run_ctr >= 10:
            if game_prev == "A":
                good_runs_A.append(run_ctr)
            else:
                good_runs_B.append(run_ctr)
        run_ctr = 1

print(
    len(good_runs_A) + len(good_runs_B),
    "A" if max(good_runs_A) > max(good_runs_B) else "B",
    max(max(good_runs_A), max(good_runs_B)),
)
