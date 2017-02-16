package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		str := scanner.Text()
		if num, err := strconv.Atoi(str); err == nil {
			fmt.Println(num)
		} else {
			fmt.Println("INVALID")
		}
	}
}
