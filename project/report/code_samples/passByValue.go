// To compile and run: go run passByValue.go

package main

import "fmt"

func foo(x int) {
	x = x + 1
	fmt.Println("x in foo is", x)
}

func bar(x *int) {
	*x = *x + 1
}

func main() {
	x := 0
	foo(x)
	fmt.Println("x in main is", x)

	if x == 0 {
		fmt.Println("Go uses pass by value")
	} else {
		fmt.Println("Go uses pass by reference")
	}

	fmt.Println("Fake pass by reference by using pointer")
	bar(&x)
	fmt.Println("x in main is now", x)
}
