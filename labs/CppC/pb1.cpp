#include<iostream>
using namespace std;

int main(){
  // Part 1
  // 1. Yes. a and b are normal int.
  int a = 1, b = 1;

  // 2. Yes. c is a const int.
  const int c = 1;

  // 3. Yes. d is a normal pointer to a normal int.
  int * d = &a;

  // 4. No. A normal pointer cannot point to a const int.
  //int * e = &c;

  // 5. Yes. f is a normal pointer to a const int.
  const int * f = &a;

  // 6. Yes. g is a normal pointer to a const int.
  const int * g = &c;

  // 7. Yes. h is a const ponter to a normal int.
  int * const h = &a;

  // 8. Yes. i is a const pointer to a const int.
  const int * const i = &c;

  // 9. Yes. j is reference to a normal int.
  int & j = a;

  // 10. No. Cannot reference to a const.
  // int & k = c;

  // 11. Yes. m is a reference to a const int.
  const int & m = c;

  // 12. No. Cannot initialize a constant reference.
  // int & const n = a;

  // Part 2
  // 1. Yes.
  a = 2;

  // 2. No. c is const and cannot be reassigned.
  // c = 2;

  // 3. Yes.
  *d = 3;

  // 4. No. f ponts to const value and cannot be reassigned.
  // *f = 3;

  // 5. Yes.
  f = &b;

  // 6. No. h is a const pointer and cannot point to another reference.
  // h = &b;

  // 7. No. Cannot change value of reference.
  // *j = 3;

  // 8. No. m reference to a const and cannot be reassigned.
  // m = 3;
}
