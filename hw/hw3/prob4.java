public class prob4 {
  class Cloud {
    public void rain() { System.out.println("sprinkles"); }
  }
  class StormCloud extends Cloud {
     public void rain() { System.out.println("torrential downpour"); }
  }
  public void demo() {
    Cloud fluffy = new StormCloud();
    fluffy.rain();  // This prints "torrential downpour"
  }
  public static void main(String[] args) {
    prob4 main = new prob4();
    main.demo();
  }
}

/*
This program prints "torrential downpour", which is the child's method.
Therefore, Java uses dynamically method binding.
*/
