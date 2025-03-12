def read_data(example: bool = False) -> list[str]:
    with open(f"dane/slowa{'_przyklad' if example else ''}.txt") as f:
        return [line.strip() for line in f]
