package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

func main() {
	capWords := []string{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		sentence := scanner.Text()
		words := strings.Split(sentence, " ")
		for _, w := range words {
			match, _ := regexp.MatchString("^[A-Z]", w)
			if match {
				capWords = append(capWords, w)
			}
		}
	}

	for _, w := range capWords {
		fmt.Println(w)
	}
}
