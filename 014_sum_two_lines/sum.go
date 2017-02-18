package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func parseNumbers(str string) []int {
	numbers := []int{}
	numsStr := strings.Split(str, ",")
	for _, numStr := range numsStr {
		num, err := strconv.Atoi(numStr)
		if err != nil {
			log.Fatal(err)
		}
		numbers = append(numbers, num)
	}

	return numbers
}

func main() {
	linesSeen := 0

	nums1 := []int{}
	nums2 := []int{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		str := scanner.Text()
		linesSeen += 1

		if linesSeen == 1 {
			nums1 = parseNumbers(str)
		}

		if linesSeen == 2 {
			nums2 = parseNumbers(str)
			break
		}
	}

	len1 := len(nums1)
	len2 := len(nums2)

	if len1 != len2 {
		log.Fatal("Both lines should have the same number of elements")
	}

	for i, n1 := range nums1 {
		n2 := nums2[i]
		fmt.Print(n1 + n2)
		if i+1 != len1 {
			fmt.Print(",")
		}
	}
	fmt.Println()
}
