#include <iostream>
#include <vector>

using namespace std;

int fibo(vector<int> &table, int n) {
  if (n < table.size()) {
    return table[n];
  } else {
    int t1 = fibo(table, n-2);
    int t2 = fibo(table, n-1);
    table.push_back(t1+t2);
    return t1 + t2;
  }
}

int main() {
  vector<int> memo = {1, 1};
  int res = 1;
  int prev_res = 0;
  for (int i = 0; res >= prev_res; ++i) {
    prev_res = res;
    res = fibo(memo, i);
    cout << "fibo(" << i << ") = " << res << endl;
  }
  cout << "SUSPICIOUSLY WRONG!" << endl;
  return 0;
}
