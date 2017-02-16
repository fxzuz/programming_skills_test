package main

import (
	"bufio"
	"fmt"
	"os"
	"time"
)

var (
	p         = fmt.Println
	shortForm = "01-02-2006"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		date := scanner.Text()
		if _, err := time.Parse(shortForm, date); err == nil {
			p("VALID")
		} else {
			p("INVALID")
		}
	}
}
