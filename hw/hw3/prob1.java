public class prob1 {
  public static void main (String[] args) {
    double x1 = 'w' / 3.14;
    System.out.printf("w / 3.14 returns %f\n", x1);

    //int x2 = 3.14;  /* Error */
    System.out.println("Assigning 3.14 to int variable fails");
  }
}

/*
Implicit coerson worked in line 3, but not in line 6. Hence Java fails in between strongly and weakly typed.
*/
