#include <iostream>
using namespace std;
int main() {
  int a[5] = {1,2,3,4,5};
  int i;
  for (i = 0; i < 10; i++) {
    i < 5 && cout << a[i] << endl;
    if (i >= 5 || a[i] == 2) {
      cout << "Yay!" << endl;
    }
  }
  return 0;
}
