from zad2 import F

n = 0
found = False
while True:
    n += 1

    f_n = F(n)

    if f_n == 18 and not found:
        print(f"min F({n}) = 18")
        found = True

    if f_n > 18:
        print(f"max F({n - 1}) = 18")
        break
