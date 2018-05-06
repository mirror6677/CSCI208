// To compile and run: go run garbageCollector.go

package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println("Start garbage collect")
	runtime.GC()
	fmt.Println("Garbage collect finished")
}
