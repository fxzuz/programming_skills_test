package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		str := scanner.Text()
		num, err := strconv.Atoi(str)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Printf("%016b\n", num)
	}
}
