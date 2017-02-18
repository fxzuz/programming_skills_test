package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func toHex(rgb uint64) string {
	str := strconv.FormatUint(rgb, 16)
	if len(str) == 1 {
		str = "0" + str
	}
	return strings.ToUpper(str)
}

func toRGB(str string) string {
	rgbValues := strings.Split(str, "-")
	if len(rgbValues) != 3 {
		return "INVALID"
	}

	result := "#"
	for _, rgbVal := range rgbValues {
		rgb, err := strconv.ParseUint(rgbVal, 10, 8) // (0 to 255)
		if err != nil {
			return "INVALID"
		}
		result += toHex(rgb)
	}

	return result
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		combos := strings.Split(line, ",")
		for i, c := range combos {
			rgb := toRGB(c)
			fmt.Print(rgb)
			if i+1 != len(combos) {
				fmt.Print(",")
			}
		}
		fmt.Println()
	}
}
