def foo(n):
    if n < 1:
        return 5
    result = 4
    for i in range(1, n+1):
        result += i
    return result

'''
# Uncomment this block for testing
if __name__ == '__main__':
    while True:
        try:
            n = int(input("input: "))
        except:
            break
        print(foo(n))
'''
