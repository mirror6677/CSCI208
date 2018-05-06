// To compile and run: go run fixOps.go

package main

import "fmt"

func main() {
	i := 0
	j := 1
	fmt.Println(i + j) // inflx binary operator
	i++
	fmt.Println(i) // postfix unary operator
	//++i  // prefix not allowed
	//fmt.Println(i--)  // Error: expecting expression
}
