#include<iostream>
using namespace std;

// Move the code in pb1_a.cpp and pb1_a.h
int global_var = 43;

void f(){
  global_var += 2;
}
// End of this move


//  Move the code in pb1_b.cpp and pb1_b.h
void reinit(){
  global_var = 0;
}

void print(){
  cout << "global_var = " << global_var << endl;
}
// End of this move


// Move the main function in pb_c.cpp
int main(){
  print();
  f();
  print();
  reinit();
  print();
  f();
  print();
}
// End of this move
