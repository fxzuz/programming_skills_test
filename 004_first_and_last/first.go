package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		strNum := scanner.Text()
		num, err := strconv.Atoi(strNum)
		if err != nil {
			log.Fatal(err)
		}
		strSqr := strconv.Itoa(num * num)
		length := len(strSqr)
		if length == 1 {
			fmt.Println(strSqr)
		} else {
			firstDigit, _ := strconv.Atoi(strSqr[0:1])
			lastDigit, _ := strconv.Atoi(strSqr[length-1:])
			fmt.Println(firstDigit + lastDigit)
		}
	}
}
