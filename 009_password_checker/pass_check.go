package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

const N_ABC int = 4
const N_123 int = 2

func isValid(password string) bool {
	reABC := regexp.MustCompile("[a-zA-Z]")
	lenABC := len(reABC.FindAllStringIndex(password, N_ABC))
	if lenABC != N_ABC {
		return false
	}

	re123 := regexp.MustCompile("[0-9]")
	len123 := len(re123.FindAllStringIndex(password, N_123))
	if len123 != N_123 {
		return false
	}

	return true
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		password := scanner.Text()
		if isValid(password) {
			fmt.Println("VALID")
		} else {
			fmt.Println("INVALID")
		}
	}
}
