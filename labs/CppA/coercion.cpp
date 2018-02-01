#include <iostream>

using namespace std;

int main() {
  cout << "char: " << sizeof(char) << endl;
  cout << "bool: " << sizeof(bool) << endl;
  cout << "short: " << sizeof(short) << endl;
  cout << "int: " << sizeof(int) << endl;
  cout << "float: " << sizeof(float) << endl;
  cout << "long: " << sizeof(long) << endl;
  cout << "long long: " << sizeof(long long) << endl;
  cout << "double: " << sizeof(double) << endl;

  int i = 2;
  char c = 'C';
  bool b = true;
  short s = 3;
  long k = 12L;
  long long kk = 10000LL;
  float f = 0.53f;
  double d = 2.0 * f;

  //safe coercions
  cout << "------- Safe coercion examples -------" << endl;
  int res1 = s * s;
  double res2 = f + f;
  cout << "3 x 3 is " << res1 << endl;
  cout << "0.53 + 0.53 is " << res2 << endl;
  cout << "The above examples show that no information's lost." << endl;

  //unsafe coercions
  cout << "------- Unsafe coercion examples -------" << endl;
  short res3 = i + 50000;
  int res4 = f + f;
  cout << "2 + 50000 is " << res3 << endl;
  cout << "0.53 + 0.53 is " << res4 << endl;
  cout << "The above examples show that some information's lost." << endl;

  // Weakly typed
  cout << "I think C++ is a weakly typed language because it allows unsafe coercions to happen." << endl;
  return 0;
}
