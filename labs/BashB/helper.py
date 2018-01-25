import sys, copy
arg = sys.argv[1]

def findAllCombo(arg, result):
    for i in range(len(arg)):
        result2 = copy.deepcopy(result)
        result2.append(arg[i])
        print("".join(result2))
        arg2 = copy.deepcopy(arg[i+1:])
        findAllCombo(arg2, result2)

findAllCombo(arg, [])
