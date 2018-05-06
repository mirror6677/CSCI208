// To compile and run: go run evalOrder.go

package main

import "fmt"

func foo(i int, j int, k int) { fmt.Println("foo is called") }

func arg1() int {
	fmt.Println("arg1 is called")
	return 1
}

func arg2() int {
	fmt.Println("arg2 is called")
	return 2
}

func main() {
	foo(arg1(), arg1(), arg2())
}
