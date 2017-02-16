package main

import (
	"fmt"
	"math"
)

// This nasty piece of code solves the problem, right?
func rootLooksLikeInt(num int, r float64) bool {
	rootStr := fmt.Sprintf("%.6f", math.Pow(float64(num), 1/r))
	return "000000" == rootStr[len(rootStr)-6:]
}

func main() {
	for num := 2; num <= 20000; num += 1 {
		if rootLooksLikeInt(num, 6) { // 2 and 3 are automatically ok
			fmt.Println(num)
		}
	}
}
