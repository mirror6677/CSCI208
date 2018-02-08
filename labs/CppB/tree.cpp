#include"tree.h"
#include<iostream>
#include<string>
using namespace std;
/* If nullptr is causing an error then you are not correctly using C++11 */

BST::BST(){
  this->key = -1; // placeholder till you get a real value
  this->left = nullptr; // nullptr is the null pointer.
  this->right = nullptr;
  this->value = "";
}

bool BST::isleaf(){
  return (this->left == nullptr) && (this->right == nullptr);
}

/* Define the functions insert() and search() here according to their declaration in
the tree.h header file. */
void BST::insert(int k, string v){
  if (this->key == -1){
    this->key = k;
    this->value = v;
  }
  if (k <= this->key && this->left == nullptr){
    this->left = new BST();
    this->left->key = k;
    this->left->value = v;
  }
  else if (k > this->key && this->right == nullptr){
    this->right = new BST();
    this->right->key = k;
    this->right->value = v;
  }
  else if (k <= this->key){
    this->left->insert(k, v);
  }
  else{
    this->right->insert(k, v);
  }
}

string BST::search(int k){
  if (this->key == k){
    return this->value;
  }
  else if (this->isleaf()){
    return "Not Found!";
  }
  else if (k < this->key){
    return this->left->search(k);
  }
  else{
    return this->right->search(k);
  }
}

int main(){
  BST * t = new BST();

  t->insert(10,"Ten");
  t->insert(5,"Five");
  t->insert(12, "Twelve");
  t->insert(7, "Seven");
  t->insert(4, "Four");
  t->insert(11, "Eleven");

  cout << t->search(5) << endl;
  cout << t->search(10) << endl;
  cout << t->search(6) << endl;
  cout << t->search(7) << endl;
  cout << t->search(11) << endl;

  return 0;
}
