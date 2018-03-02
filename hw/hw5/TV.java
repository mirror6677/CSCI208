public class TV {
  int width;
  int height;

  public TV() {}

  public TV(TV old) {
  	width = old.width;
  	height = old.height;
  }

  public String toString() {
		return "W " + width + " H " + height;
  }
}
