#include <iostream>

using namespace std;

int main() {
  cout << "1. Is it possible to declare a reference without initializing it?" << endl;
  // int &r1;
  cout << "No. Throws error when declaring reference without initializing.\n" << endl;

  cout << "2. Is it possible to declare a pointer without initializing it?" << endl;
  int *p1;
  cout << "Yes. Declaring pointer without initializing is fine.\n" << endl;

  cout << "3. Is it possible to reassign a reference so it refers to a different variable?" << endl;
  /*
  int i1 = 1;
  int &r2 = i1;
  int i2 = 2;
  &r2 = i2;
  */
  cout << "No, C++ does not allow reassign references.\n" << endl;

  cout << "4. Is it possible to reassign an pointer so it points to a different memory address?" << endl;
  int i3 = 1;
  int *p2;
  p2 = &i3;
  int i4 = 2;
  p2 = &i4;
  cout << "Yes, reassign an pointer to different variable is OK.\n" << endl;

  cout << "5. Explain why it printed those numbers in one-two sentences." << endl;
  int i = 5; int *p = &i; int &r = *p;
  *p += r;
  cout << i << " " << *p << " " << r << endl;
  cout << "Prints 10 10 10 because p is a pointer that points to the address (reference) of i; and r is a reference to the pointer p, which is also reference to i. Thus changing anyone of the three will change the other two as well." << endl;
  return 0;
}
