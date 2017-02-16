package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		str := scanner.Text()
		re := regexp.MustCompile(`(?i)[aeiou]`)
		count := len(re.FindAllStringIndex(str, -1))
		fmt.Println(count)
	}
}
