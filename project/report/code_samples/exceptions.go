// To compile and run: go run exceptions.go

package main

import (
	"log"
	"os"
)

func main() {
	f, err := os.Open("filename.ext")
	if err != nil {
		log.Fatal(err)
	}
	f.Close()
}
