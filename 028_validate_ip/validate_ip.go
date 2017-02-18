package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var p = fmt.Println

func isValid(address string) bool {
	parts := strings.Split(address, ".")

	if len(parts) != 4 {
		return false
	}

	for _, part := range parts {
		if _, err := strconv.ParseUint(part, 10, 8); err != nil {
			return false
		}
	}

	return true
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		address := scanner.Text()
		if isValid(address) {
			p("VALID")
		} else {
			p("INVALID")
		}
	}
}
