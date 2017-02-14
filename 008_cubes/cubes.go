package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func sumOfCubesUpTo(x uint64) uint64 {
	var i, sum uint64
	
	for i <= x {
		sum += i*i*i
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
			sum := sumOfCubesUpTo(x)
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
