from zad1 import read_data
from collections import Counter


def flatten[T](mtrx: list[list[T]]) -> list[T]:
    ret = []

    for row in mtrx:
        for el in row:
            ret.append(el)

    return ret


equal_boards = 0
lowest_equal_board = -1

for board in read_data():
    full_squares = [square for square in flatten(board) if square != "."]
    white = [square for square in full_squares if square.isupper()]
    black = [square for square in full_squares if square.islower()]

    white_counter = Counter(piece.lower() for piece in white)
    black_counter = Counter(piece.lower() for piece in black)

    if white_counter == black_counter:
        equal_boards += 1
        total_pieces = len(white) + len(black)
        if lowest_equal_board == -1 or total_pieces < lowest_equal_board:
            lowest_equal_board = total_pieces

print(equal_boards, lowest_equal_board)
