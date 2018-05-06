// To compile and run: go run shortCircuit.go

package main

import "fmt"

func exp1() bool {
	fmt.Print("exp1 is called  ")
	return true
}

func exp2() bool {
	fmt.Print("exp2 is called  ")
	return false
}

func main() {
	fmt.Println("exp1 (true) && exp2 (false)")
	fmt.Println(exp1() && exp2())
	fmt.Println("exp2 (false) && exp1 (true)")
	fmt.Println(exp2() && exp1())
	fmt.Println("exp1 (true) || exp2 (false)")
	fmt.Println(exp1() || exp2())
	fmt.Println("exp2 (false) || exp1 (true)")
	fmt.Println(exp2() || exp1())
}
