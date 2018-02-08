#include<iostream>
#include "pb1_a.h"
#include "pb1_b.h"
using namespace std;

void reinit(){
  global_var = 0;
}

void print(){
  cout << "global_var = " << global_var << endl;
}
