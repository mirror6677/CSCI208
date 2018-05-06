// To compile and run: go run stronglyTyped.go

package main

func main() {
	var i int = 10

	// Trying implicit coerse from int to float (FAILED)
	var f float32 = i

	// Trying implicit coerse from int to string (FAILED)
	var s string = i
	var b bool = true

	// Trying implicit coerse from bool to int (FAILED)
	i = b
}
