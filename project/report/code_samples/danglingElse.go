// To compile and run: go run danglingElse.go

package main

import "fmt"

func main() {
	x := 0
	y := 0
	if x == 0 {
		if y == 1 {
			fmt.Println("y1")
		}
	} else {
		fmt.Println("n1")
	}

	if x == 0 {
		if y == 1 {
			fmt.Println("y2")
		} else {
			fmt.Println("n2")
		}
	}
}
