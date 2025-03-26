from zad4 import simulate_next_round

initial_state = [3, 1, 6, 5, 4, 5]
rounds = 4

state = initial_state.copy()
print(state)
for _ in range(rounds - 1):
    state = simulate_next_round(initial_state, state)
    print(state)
