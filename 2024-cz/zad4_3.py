from zad4 import simulate_next_round, read_data

initial_state = read_data()


state = initial_state.copy()
i = 2
while True:
    state = simulate_next_round(initial_state, state)

    tobreak = False
    for j in range(len(initial_state)):
        if state[j] == initial_state[j]:
            print(i - 1, j + 1)
            tobreak = True
            break
    if tobreak:
        break
    i += 1
