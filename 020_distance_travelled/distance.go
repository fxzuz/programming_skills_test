package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

const U = 36 * 1000 / 3600
const A = 5

func distance(t uint64) float64 {
	return float64(U*t) + (float64(A*t*t) / 2)
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		t, err := strconv.ParseUint(scanner.Text(), 10, 64)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Println(distance(t))
	}
}
