from zad1 import read_data


def rotate[T](mtrx: list[list[T]]) -> list[list[T]]:
    cols = []

    for i in range(len(mtrx[0])):
        col = []
        for j in range(len(mtrx)):
            col.append(mtrx[j][i])
        cols.append(col)

    return cols


atlst_one_col_empt = 0
max_cols_empt = 0
for board in read_data():
    cols_empt = 0
    for col in rotate(board):
        if col.count(".") == 8:
            cols_empt += 1

    if cols_empt > 0:
        atlst_one_col_empt += 1

    if cols_empt > max_cols_empt:
        max_cols_empt = cols_empt

print(atlst_one_col_empt, max_cols_empt)
