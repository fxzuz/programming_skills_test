package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func makeSliceFor(n int) []string {
	s := make([]string, n)
	for i, _ := range s {
		s[i] = strconv.Itoa(n)
	}
	return s
}

func printStructure(n int) {
	for i := 1; i <= n; i += 1 {
		str := strings.Repeat(" ", n-i)
		str += strings.Join(makeSliceFor(i), " ")
		fmt.Println(str)
	}
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		n, err := strconv.Atoi(scanner.Text())
		if err != nil || n < 1 || n > 9 {
			log.Fatal("The program expects a number between 1 and 9")
		}
		printStructure(n)
	}
}
