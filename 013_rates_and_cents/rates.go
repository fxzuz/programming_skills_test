package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func calculateSum(units uint64, sum uint64) uint64 {
	if units > 300 {
		return calculateSum(300, (units-300)*80)
	}

	if units > 100 {
		return calculateSum(100, sum+(units-100)*70)
	}

	return sum + units*60
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		units, err := strconv.ParseUint(scanner.Text(), 10, 64)
		if err != nil {
			log.Fatal(err)
		}
		sum := calculateSum(units, 0)
		fmt.Println(sum)
	}
}
