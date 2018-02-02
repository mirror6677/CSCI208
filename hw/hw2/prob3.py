from enum import Enum

class Color(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3

def main():
    color = Color.RED
    print("Value of RED is " + str(color.value))
    print(Color.RED is Color.BLUE)
    print(Color.RED is not Color.GREEN) #is comparable
    #print(Color.RED < Color.BLUE)  #not ordinal
    print(Color.RED == 1) #not truely integers
    print(list(Color))
    for name, member in Color.__members__.items():
        print(name, member)
    print("Python enum is comparable, but not ordinal. Enums are not truely integers.")

if __name__ == "__main__":
    main()
