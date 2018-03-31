#include <iostream>
using namespace std;
void foo(int x) { x = 2; }

// (a) fake pass by reference
void fooFake(int *x) { *x = 3; }

// (b) real pass by reference
void fooReal(int &x) { x = 4; }

int main() {
  int z = 5;
  foo(z);
  cout << z << endl;  // prints 2
  fooFake(&z);
  cout << z << endl;  // prints 3
  fooReal(z);
  cout << z << endl;  // prints 4
}
