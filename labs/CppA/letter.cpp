#include <iostream>

using namespace std;

int main() {
  cout << "Please enter your first name: " << endl;
  string first_name;
  cin >> first_name;
  cout << "Hello, " << first_name << endl;
  cout << "Enter the name of a person you want to invite for dinner:" << endl;
  string friend_name;
  cin >> friend_name;
  cout << "Enter 'a' for no food restriction, 'v' for vegetarian, or 'g' for vegan." << endl;
  char friend_diet;
  cin >> friend_diet;
  if (friend_diet == 'a') {
    cout << "Come and enjoy some steak!" << endl;
  } else if (friend_diet == 'v') {
    cout << "Come and enjoy your vegetarian meal!" << endl;
  } else if (friend_diet == 'g') {
    cout << "Come and enjoy you vegan meal!" << endl;
  } else {
    cout << "Some mystery diet?" << endl;
  }
  cout << "Enter the age of your friend:" << endl;
  int age;
  cin >> age;
  cout << "I heard that you will turn " << (age + 1) << " soon." << endl;
  if (age == 15 || age == 17 || age == 20 || age == 49) {
    cout << "This is an important birthday for you, come and have dinner together." << endl;
  }

  /*
  string s1; int i; double d;
  while (cin >> s1 >> i >> d){ // to exit this loop press CTRL-d
    cout << "s1= " << s1 << ", i= " << i << ", d=" << d << endl;
  }
  */
}
