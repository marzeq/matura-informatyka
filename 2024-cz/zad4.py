def simulate_next_round(initial_state: list[int], state: list[int] = None) -> list[int]:
    if state is None:
        state = initial_state.copy()
    n = len(initial_state)

    curr_state = state.copy()
    new_state = [0] * n

    for i in range(n):
        new_state[i] = initial_state[curr_state[i] - 1]

    return new_state


def read_data(example: bool = False) -> list[int]:
    with open(f"dane/odbiorcy{'_przyklad' if example else ''}.txt") as f:
        return [int(n) for n in f.read().split("\n") if n]
