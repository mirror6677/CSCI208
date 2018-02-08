public class Pb2 {

  public String color;
  private int numPoints;
  public static int maxPoints = 100;

  public Pb2 () {
    this.color = "red";
    this.numPoints = 0;
  }

  public void change(int numPoints) {
    this.numPoints = numPoints;
  }

  public void print() {
    System.out.printf("Color is %s and number of points is %d\n", this.color, this.numPoints);
  }

  public static void main(String[] args) {
    Pb2 obj1 = new Pb2();
    Pb2 obj2 = obj1;
    obj1.print();
    obj2.print();
    obj1.change(42); // change a member data to 42
    obj1.print();
    obj2.print();
  }
}
