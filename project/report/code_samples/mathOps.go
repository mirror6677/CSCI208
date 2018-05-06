// To compile and run: go run mathOps.go

package main

import "fmt"

func main() {
	i := 1
	j := 2
	c := 'c'
	d := 'd'
	fmt.Println("1 / 2 =", i/j)
	fmt.Println("'c' / 2 =", c/2)
	// fmt.Println("'c' / 2 =", c/j)  // Does not compile
	fmt.Println("'c' / 'd' =", c/d)
}
