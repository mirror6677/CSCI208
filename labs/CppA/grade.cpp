#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<int> v;
  cout << "Enter several integers between 0 and 10:" << endl;

  int i;
  while (true) {
    cin >> i;
    if (cin.eof()) {
      break;
    }
    v.push_back(i);
  }

  int min = v[0];
  int sum = 0;
  for (int i = 1; i < v.size(); ++i) {
    if (v[i] < min) {
      sum += min;
      min = v[i];
    } else {
      sum += v[i];
    }
  }
  float avg = (float)sum / (v.size()-1);
  cout << "Average is " << avg << endl;

  vector<char> letters = {'A', 'B', 'C', 'D', 'F'};
  int index = 10 - avg;
  char grade;
  if (index < 5) {
    grade = letters[index];
  } else {
    grade = 'F';
  }
  cout << "Letter grade is " << grade << endl;
}
