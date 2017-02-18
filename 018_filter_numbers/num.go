package main

import "fmt"

func main() {
	for num := 258; num <= 393; num += 1 {
		if num % 10 != 5 {
			fmt.Println(num)
		}
	}
}
