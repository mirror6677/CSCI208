// To compile and run: go run concurrency.go

package main

import (
	"fmt"
	"math/rand"
	"strconv"
	"time"
)

func sleep(i int, chIsFinished chan string) {
	t := time.Duration(rand.Float32() * 10)
	fmt.Printf("Goroutine #%d will sleep for %d seconds\n", i, t)
	time.Sleep(t * 1000000000)
	chIsFinished <- "Goroutine #" + strconv.Itoa(i) + " finished"
}

func main() {
	x := 5
	chIsFinished := make(chan string)

	for i := 0; i < x; i++ {
		go sleep(i, chIsFinished)
	}

	for j := 0; j < x; {
		c := <-chIsFinished
		fmt.Println(c)
		j++
	}

	fmt.Println("Done")
}
