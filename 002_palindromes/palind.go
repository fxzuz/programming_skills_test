package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

func isPalindrome(str string) bool {
	runes := []rune(str)

	for i, j := 0, len(runes)-1; i < len(runes)/2; i, j = i+1, j-1 {
		if runes[i] != runes[j] {
			return false
		}
	}

	return true
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	palindromes := []string{}

	for scanner.Scan() {
		str := strings.ToLower(scanner.Text())
		if isPalindrome(str) {
			palindromes = append(palindromes, str)
		}
	}

	sort.Strings(palindromes)
	for _, palindrome := range palindromes {
		fmt.Println(palindrome)
	}
}
