def tokenize(input_str):
    try:
        return int(input_str)
    except:
        return input_str


######## main ########

print("Welcome to lt7 !!\n")

while True:
    input_str = input("> ")
    token = tokenize(input_str)

    print("-"*10)
    print("  {} ({})".format(token, type(token)))
    print("-"*10)
    print()
