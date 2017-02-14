package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func fluctuation(str string) float64 {
	strPrices := strings.Split(str, ",")
	length := len(strPrices)

	sum := 0
	maxPrice := 0

	for _, strPrice := range strPrices {
		price, err := strconv.Atoi(strPrice)
		if err != nil {
			log.Fatal(err)
		}
		sum += price
		if price > maxPrice {
			maxPrice = price
		}
	}

	if maxPrice == 0 {
		return 0.0
	}

	avg := sum / length
	return float64(maxPrice-avg) / float64(maxPrice) * 100
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		fluc := fluctuation(line)
		fmt.Println(fluc)
	}
}
