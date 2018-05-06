// To compile and run: go run primitives.go

package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var b bool
	fmt.Printf("Size of bool is %d\n", unsafe.Sizeof(b))

	var ui8 uint8
	fmt.Printf("Size of uint8 is %d\n", unsafe.Sizeof(ui8))

	var ui16 uint16
	fmt.Printf("Size of uint16 is %d\n", unsafe.Sizeof(ui16))

	var ui32 uint32
	fmt.Printf("Size of uint32 is %d\n", unsafe.Sizeof(ui32))

	var ui64 uint64
	fmt.Printf("Size of uint64 is %d\n", unsafe.Sizeof(ui64))

	var i8 int8
	fmt.Printf("Size of int8 is %d\n", unsafe.Sizeof(i8))

	var i16 int16
	fmt.Printf("Size of int16 is %d\n", unsafe.Sizeof(i16))

	var i32 int32
	fmt.Printf("Size of int32 is %d\n", unsafe.Sizeof(i32))

	var i64 int64
	fmt.Printf("Size of int64 is %d\n", unsafe.Sizeof(i64))

	var f32 float32
	fmt.Printf("Size of float32 is %d\n", unsafe.Sizeof(f32))

	var f64 float64
	fmt.Printf("Size of float64 is %d\n", unsafe.Sizeof(f64))

	var c64 complex64
	fmt.Printf("Size of complex64 is %d\n", unsafe.Sizeof(c64))

	var c128 complex128
	fmt.Printf("Size of complex128 is %d\n", unsafe.Sizeof(c128))

	var s string
	fmt.Printf("Size of string is %d\n", unsafe.Sizeof(s))

	var e error
	fmt.Printf("Size of error is %d\n", unsafe.Sizeof(e))
}
