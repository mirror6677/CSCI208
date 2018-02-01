#include <iostream>

using namespace std;

int fibo(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return fibo(n-1) + fibo(n-2);
  }
}

int main() {
  int res = 1;
  int prev_res = 0;
  for (int i = 0; res >= prev_res; ++i) {
    prev_res = res;
    res = fibo(i);
    cout << "fibo(" << i << ") = " << res << endl;
  }
  cout << "SUSPICIOUSLY WRONG!" << endl;
  return 0;
}
