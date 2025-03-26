from zad4 import read_data

initial_state = read_data()

n = len(initial_state)

not_in = 0
for i in range(1, n + 1):
    if i not in initial_state:
        not_in += 1

print(not_in)
