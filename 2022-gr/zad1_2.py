from zad1 import read_data

games = read_data()

points_A = 0
points_B = 0

for g in games:
    if g == "A":
        points_A += 1
    else:
        points_B += 1

    if (points_A >= 1000 or points_B >= 1000) and abs(points_A - points_B) >= 3:
        break

print("A" if points_A > points_B else "B", f"{points_A}:{points_B}")
