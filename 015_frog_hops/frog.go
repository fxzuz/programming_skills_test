package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

const LONG_HOP uint64 = 20
const MEDIUM_HOP uint64 = 10
const SHORT_HOP uint64 = 5

func calculateDistance(hops uint64) uint64 {
	hopsByPattern := hops / 3
	hopsRem := hops % 3

	distance := hopsByPattern * (LONG_HOP + MEDIUM_HOP + SHORT_HOP)

	if hopsRem == 1 {
		distance += LONG_HOP
	} else if hopsRem == 2 {
		distance += LONG_HOP + MEDIUM_HOP
	}

	return distance
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		hops, err := strconv.ParseUint(scanner.Text(), 10, 64)
		if err != nil {
			log.Fatal(err)
		}
		distance := calculateDistance(hops)
		fmt.Println(distance)
	}
}
