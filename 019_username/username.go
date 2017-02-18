package main

import (
	"bufio"
	"fmt"
	"os"
)

func isValid(username string) bool {
	runes := []rune(username)
	length := len(runes)

	// The minimum length of the username must be 5 characters
	// and the maximum may be 10.
	if length < 5 || length > 10 {
		return false
	}

	var hasCapitalLetter, hasDigit, hasSpecialChar bool

	for _, r := range runes {
		// Username should not contain any spaces
		if r == ' ' {
			return false
		}

		// Username should contain at least one letter from A-Z
		if r >= 'A' && r <= 'Z' {
			hasCapitalLetter = true
		}

		// Username should contain at least one digit from 0-9
		if r >= '0' && r <= '9' {
			hasDigit = true
		}

		// Username should contain at least one character: @#*=
		if r == '@' || r == '#' || r == '*' || r == '=' {
			hasSpecialChar = true
		}
	}

	return hasCapitalLetter && hasDigit && hasSpecialChar
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		username := scanner.Text()
		if isValid(username) {
			fmt.Println("PASS")
		} else {
			fmt.Println("FAIL")
		}
	}
}
