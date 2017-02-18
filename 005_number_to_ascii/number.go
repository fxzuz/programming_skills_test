package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

const MIN int = 40
const MAX int = 125

func main() {
	i, n := 0, 0
	ascii := []byte{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		strX := scanner.Text()
		x, err := strconv.Atoi(strX)
		if err != nil {
			log.Fatal(err)
		}

		if i == 0 {
			n = x
		} else {
			if x < MIN || x > MAX {
				log.Fatalf("Give me a number between %d and %d", MIN, MAX)
			}
			ascii = append(ascii, byte(x))
			if i == n {
				break
			}
		}

		i += 1
	}

	for _, char := range ascii {
		fmt.Printf("%c", char)
	}
	fmt.Println()
}
