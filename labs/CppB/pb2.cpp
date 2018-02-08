#include<iostream>
using namespace std;

class Pb2  {
public:
  string color;
  static int maxPoints;
  Pb2(){
    color = "red";
    numPoints = 0;
  }
  void change(int n);
  void print();

private:
  int numPoints;
};

int Pb2::maxPoints = 100;

void Pb2::change(int n){ numPoints = n; }

void Pb2::print(){
  cout << "Color is " << color << " and number of points is " <<  numPoints << endl;
}

int main() {
  Pb2 obj1 = Pb2(); // notice we did NOT use new here
  Pb2 obj2 = obj1;
  obj1.print();
  obj2.print();
  obj1.change(42); // change a member data to 42
  obj1.print();
  obj2.print();
}
