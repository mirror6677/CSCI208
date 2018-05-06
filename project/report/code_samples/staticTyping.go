// To compile and run: go run staticTyping.go

package main

func main() {
	x := 0

	if x > 0 {
		// This line produces an error even if it will not actually be executed
		x = "Hello world"
	}
}
