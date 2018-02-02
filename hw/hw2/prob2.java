public class prob2 {

  // Enum constructor
  public enum Color {
    RED, BLUE, GREEN
  }

  // Cartesian product constructor
  public class Leaf {
    String color;
    int numOfVeins;
    public Leaf (String color, int numOfVeins) {
      this.color = color;
      this.numOfVeins = numOfVeins;
    }
  }

  // Array constructor
  public char myArr[] = new char[]{'H', 'e', 'l', 'l', 'o'};

  public static void main (String[] args) {
    prob2 main = new prob2();
    main.demo();
  }

  public void demo () {
    System.out.println("---------- Enum demo starts ----------");
    Color red = Color.RED;
    Color blue = Color.BLUE;
    Color green = Color.GREEN;
    if (red.ordinal() < blue.ordinal()) {
      System.out.println("Red is smaller than blue.");
    }
    if (green.ordinal() > blue.ordinal()) {
      System.out.println("Green is greater than blue.");
    }
    System.out.println("Java enum is ordinal.");
    System.out.println("---------- Enum demo ends ----------\n");

    System.out.println("---------- Cartesian product demo starts ----------");
    Leaf leaf = new Leaf("green", 5);
    System.out.printf("The leaf is %s and has %d number of veins.%n", leaf.color, leaf.numOfVeins);
    System.out.println("---------- Cartesian product demo ends ----------\n");

    System.out.println("---------- Array demo starts ----------");
    char x = myArr[0];
    if (x == 'H') {
      System.out.println("Java array starts at index 0.");
    }
    System.out.println("Java array uses integer indices.");
    System.out.println("---------- Array demo ends ----------");
  }
}

/*
Supports: enum, cartesian product, array
Not supports: subrange, union
*/
