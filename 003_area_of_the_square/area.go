package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		strVolume := scanner.Text()
		volume, err := strconv.ParseFloat(strVolume, 64)
		if err != nil {
			log.Fatal(err)
		}
		side := math.Pow(volume, 1/3.0)
		area := math.Pow(side/2, 2)
		fmt.Printf("%.2f\n", area)
	}
}
