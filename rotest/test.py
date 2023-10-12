def print_square(y):
    # Print each row of the square
    for i in range(y):
        row = ""
        for j in range(y):
            if j == 0 or j == y - 1 or i == 1 - y or i + y == j + y:
                row += "X "
            else:
                row += "O "
        print(row)

# Example usage
print_square(5)
print()
print_square(7)

    # i == j or i + j == y - 1: