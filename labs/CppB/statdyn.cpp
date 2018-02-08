#include<iostream>
using namespace std;

class A{
public:
  virtual void f();
  void g();
};

void A::f(){ cout << "Method from A" << endl; }

void A::g(){ f(); }

class B: public A{
public:
  void f();
};

void B::f(){ cout << "Method from B" << endl; }

int main(){
  B b = B();
  b.g();
}
