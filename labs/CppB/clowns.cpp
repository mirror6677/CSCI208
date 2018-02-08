#include<iostream>
using namespace std;

class Clown{
public:
  string name;
  Clown(string n){ name = n; }
  virtual void dance();
};

void Clown::dance(){ cout << name << " twirls like a ballerina\n" << endl; }

class CircusClown: public Clown{
public:
  CircusClown(string n): Clown(n) {}
  void dance();
};

void CircusClown::dance(){ cout << name << " hops up and down\n" << endl; }

int main(){
  Clown * carl = new Clown("Carl");
  carl->dance();

  CircusClown * joe = new CircusClown("Joe");
  joe->dance();

  Clown * bob = new CircusClown("Bob");
  bob->dance();

  Clown * joeJr = (Clown *) joe;
  joeJr->dance();
}
