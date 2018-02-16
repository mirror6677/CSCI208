class Human:
    def walk(self):
        print("Human walks.")
    def drive(self):
        print("Human drives.")

class Transformer:
    def walk(self):
        print("Transformer walks.")
    def drive(self):
        print("Transformer drives.")

class Car:
    def drive(self):
        print("Car drives.")

def walk(entity):
    entity.walk()

def drive(entity):
    entity.drive()

def main():
    human = Human()
    transformer = Transformer()
    car = Car()

    walk(human)
    walk(transformer)
    #walk(car)  #Uncomment this line will throw an error
    drive(human)
    drive(transformer)
    drive(car)

if __name__ == "__main__":
    main()
