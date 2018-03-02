public class Sofa {
  Color color;

  public Sofa() {}

  public Sofa(Sofa old) {
  	color = old.color;
  }

  public String toString() {
		return color + " colored";
  }
}
