public class House {
	public Door[] doors;
	public String owner;
	public Sofa mySofa;
	public int[] phoneBook;
	public int	myPhoneNum;
	public TV	myTV;

	public House() {}

	public House(House old) {
		doors = new Door[old.doors.length];
		for (int i = 0; i < doors.length; i++) {
			doors[i] = new Door(old.doors[i]);
		}

		owner = old.owner;

		mySofa = new Sofa(old.mySofa);

		phoneBook = new int[old.phoneBook.length];
		for (int i = 0; i < phoneBook.length; i++) {
			phoneBook[i] = old.phoneBook[i];
		}

		myPhoneNum = old.myPhoneNum;

		myTV = new TV(old.myTV);
	}

	public String toString() {
		String s = owner + "'s house.\n";

		s += doors.length + " doors:\n";
		for (Door door : doors) 
	    s += "\t" + door.toString() + "\n";
	
		s += "Sofa: " + mySofa.toString() + "\n";
		s += "TV: " + myTV.toString() + "\n";
		
		s += "Home phone: " + myPhoneNum + "\n";
		s += "Phone Book: \n";
		for (int i : phoneBook)
	    s += "\t" + i + "\n";
		s += "\n";
		return s;
	}

	public static void main(String[] args) {
		House h = new House();

		h.doors = new Door[2];
		h.doors[0] = new Door();
		h.doors[0].numHinges = 2;
		h.doors[0].lockable = false;
		h.doors[1] = new Door();
		h.doors[1].numHinges = 3;
		h.doors[1].lockable = true;
		  
		h.owner = "Samantha";

		h.mySofa = new Sofa();
		h.mySofa.color = Color.Orange;

		h.phoneBook = new int[3];
		h.phoneBook[0] = 5771234;
		h.phoneBook[1] = 5774567;
		h.phoneBook[2] = 5777890;

		h.myPhoneNum = 5771234;
		  
		h.myTV = new TV();
		h.myTV.height = 35;
		h.myTV.width = 70;

		House h2 = new House(h); // edit this line to make a deep copy of h.
		House h3 = new House(h2); // edit this line to make a deep copy of h2.

		h.doors[0].numHinges = 3;
		h.doors[1].lockable = false;
		h.owner = "George";
		h.mySofa.color = Color.Blue;
		h.phoneBook[1] = 5771357;
		h.myPhoneNum = 5777890;
		h.myTV.height = 50;

		h2.doors = new Door[1];
		h2.doors[0] = new Door();
		h2.doors[0].numHinges = 4;  // its a dutch door
		h2.doors[0].lockable = true;

		System.out.println(h);
		System.out.println(h2);
		System.out.println(h3);
	}
}
