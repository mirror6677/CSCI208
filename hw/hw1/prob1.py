# Bonus point: this funtion is tail recursive

def numdigits(x):
    if x < 10:
        return 1
    else:
        return 1 + numdigits(x//10)

'''
# Uncomment this block for testing
if __name__ == '__main__':
    while True:
        try:
            x = int(input("number: "))
        except:
            break
        print(numdigits(x))
'''
