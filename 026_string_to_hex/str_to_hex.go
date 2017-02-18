package main

import "fmt"

func main() {
	for letter := 'A'; letter <= 'Z'; letter += 1 {
		fmt.Printf("%X\n", letter)
	}
}
