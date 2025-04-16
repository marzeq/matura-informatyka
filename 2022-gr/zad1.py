def read_data(example: bool = False) -> list[str]:
    with open(f"dane/mecz{'_przyklad' if example else ''}.txt") as f:
        return [s for s in f.read().split("\n")[0] if s]
