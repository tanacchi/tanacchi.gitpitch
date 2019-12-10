from reader import read


dispatch_table = {}  # Added

def evaluate(src):
    if src[0] == '+':
        return src[1] + src[2]
    elif src[0] == '-':
        return src[1] - src[2]
    elif src[0] == 'define':
        key   = src[1]
        #  value = src[2]  # Step 1
        #  value = evaluate(src[2])  # Step 2
        key, value = src[1], evaluate(src[2])  # Step 3
        dispatch_table[key] = value
    else:
        return src


######## main ########

print("Welcome to lt7 !!\n")

while True:
    result = evaluate(read())

    print("-"*10)
    print("  {}  <{}>".format(result, type(result).__name__))
    print("[Debug] dispatch_table: ", dispatch_table)  # Added
    print("-"*10)
    print()
