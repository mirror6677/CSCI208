// To compile and run: go run stringOps.go

package main

import "fmt"

func main() {
	s1 := "hello"
	s2 := "world"
	fmt.Println("hello + world is", s1+s2)

	// The following two lines do not compile
	//fmt.Println("hello x 2 is", s1*2)
	//fmt.Println("hello x world is", s1*s2)
}
