public class Door {
  int numHinges;
  boolean lockable;

  public Door() {}

  public Door(Door old) {
  	numHinges = old.numHinges;
  	lockable = old.lockable;
  }

  public String toString() {
		if (lockable)
    	return "Lockable with " + numHinges + " hinges";
		else
    	return "Plain with " + numHinges + " hinges";	
  }
}
