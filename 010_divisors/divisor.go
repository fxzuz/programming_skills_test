package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

const MIN uint64 = 1
const MAX uint64 = 100000

func sumOfDivisors(x uint64) uint64 {
	var i, sum uint64 = 2, 1

	for i < x {
		if x%i == 0 {
			sum += i
		}
		i += 1
	}

	return sum
}

func main() {
	var i, n uint64
	sums := []uint64{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		x, err := strconv.ParseUint(scanner.Text(), 10, 64)
		if err != nil {
			log.Fatal(err)
		}

		if i == 0 {
			n = x
		} else {
			if x < MIN || x > MAX {
				log.Fatalf("Number should be between %d and %d\n", MIN, MAX)
			}
			sum := sumOfDivisors(x)
			sums = append(sums, sum)
		}

		if i >= n {
			break
		}

		i += 1
	}

	for _, sum := range sums {
		fmt.Println(sum)
	}
}
