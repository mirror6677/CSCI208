// To compile and run: go run staticScope.go

package main

import "fmt"

var a = 0

func foo() {
	fmt.Println("In foo, a is", a)

	if a == 0 {
		fmt.Println("Go is statically scoped")
	} else {
		fmt.Println("Go is dynamically scoped")
	}
}

func main() {
	var a = 1
	fmt.Println("In main, a is", a)
	foo()
}
