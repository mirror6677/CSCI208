public class prob3 {
  public static void main (String[] args) {
    int x1 = 42;
    int x2 = "hi";  // This line throws error at compile time in Java
    int x3 = x2 + x1;  // This line would throw error at runtime in python
  }
}

/*
Java is statically typed so variables carry the type.
Therefore, x has type int.
This means x cannot be given the value ”hi” so this code is bad.
However, the above code in Python will only throw error at runtime when trying to add an int to a string.
*/
