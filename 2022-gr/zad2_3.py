def read_data(example: bool = False) -> list[str]:
    with open(f"dane/pary{'_przyklad' if example else ''}.txt") as f:
        return [
            (int(l[0]), int(l[1]))
            for l in (s.split(" ") for s in f.read().split("\n") if s)
        ]


def is_move_possible(a: int, b: int) -> bool:
    while a < b:
        if b % 2 == 0:
            b = b // 2
        else:
            b = (b - 1) // 2
    return a == b


for a, b in read_data():
    if is_move_possible(a, b):
        print(a, b)
