#include<iostream>
#include "imagine.h"
using namespace std;

Imag::Imag(double r, double i){
  real = r;
  imag = i;
}

Imag Imag::add(Imag imagNum){
  return Imag(this->real + imagNum.real, this->imag + imagNum.imag);
}

Imag Imag::mult(Imag imagNum){
  return Imag(this->real * imagNum.real - this->imag * imagNum.imag, this->real * imagNum.imag + this->imag * imagNum.real);
}

Imag operator+(Imag n1, Imag n2){
  return n1.add(n2);
}

Imag operator*(Imag n1, Imag n2){
  return n1.mult(n2);
}

ostream & operator<<(ostream &c, Imag n){
  c << n.real << " + i" << n.imag << endl;
  return c;
}

int main(){
  Imag n1 = Imag(0.3, 0.2);
  Imag n2 = Imag(0.6, 0.75);
  cout << n1 << endl;
  cout << n2 << endl;
  cout << "n1 + n2 = " << (n1+n2) << endl;
  cout << "n1 * n2 = " << (n1*n2) << endl;
  cout << "n1 * n1 * n1 * n1 = " << (n1 * n1 * n1 * n1) << endl;
}
