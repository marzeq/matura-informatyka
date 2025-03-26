from zad4 import simulate_next_round, read_data

initial_state = read_data()


def get_answ_for_state(state):
    occurences = {}

    for j in range(len(state)):
        if state[j] in occurences:
            occurences[state[j]] += 1
        else:
            occurences[state[j]] = 1

    many = max(occurences.values())
    return many


state = initial_state.copy()
print(get_answ_for_state(state))

for i in range(8):
    state = simulate_next_round(state)

    if i == 0 or i == 2 or i == 6:
        print(get_answ_for_state(state))
