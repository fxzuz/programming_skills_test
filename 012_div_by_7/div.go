package main

import (
	"fmt"
)

func main() {
	for n := 1000; n <= 1200; n += 1 {
		if n%7 != 0 || n%5 == 0 {
			continue
		}
		fmt.Println(n)
	}
}
