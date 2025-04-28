def read_data(example: bool = False) -> list[str]:
    with open(f"dane/szachy{'_przyklad' if example else ''}.txt") as f:
        return [
            [list(row) for row in board.split("\n") if row]
            for board in f.read().split("\n\n")
            if board
        ]
