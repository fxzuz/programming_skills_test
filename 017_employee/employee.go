package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	events := 0

	ids1 := []string{}
	ids2 := []string{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		str := scanner.Text()
		events += 1

		if events == 1 {
			ids1 = strings.Split(str, ",")
		}

		if events == 2 {
			ids2 = strings.Split(str, ",")
			break
		}
	}

	seen := make(map[string]bool)

	for _, id := range ids1 {
		seen[id] = true
	}

	counter := 0
	for _, id := range ids2 {
		if seen[id] {
			counter += 1
		}
	}

	fmt.Println(counter)
}
