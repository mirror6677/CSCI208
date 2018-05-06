// To compile and run: go run anonymousFunc.go

package main

import "fmt"

type fn func(string)

func foo(f fn) {
	f("Higher order function")
}

func main() {
	// Anonymous function
	func(m string) { fmt.Println(m) }("Anonymous function")
	// First class function
	f := func(m string) { fmt.Println(m) }
	f("First class function")
	// Higher order function
	foo(f)
}
