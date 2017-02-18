package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func asciiSum(str string) int {
	sum, bytes := 0, []byte(str)
	for _, b := range bytes {
		sum += int(b)
	}
	return sum
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		strs := strings.Split(scanner.Text(), ",")
		if len(strs) != 2 {
			log.Fatal("Invalid input. Expected: STR1,STR2")
		}
		sum1 := asciiSum(strs[0])
		sum2 := asciiSum(strs[1])
		fmt.Println(sum1 - sum2)
	}
}
