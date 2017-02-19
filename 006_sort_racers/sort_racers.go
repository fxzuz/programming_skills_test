package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Racer struct {
	Name string
	Pos  int
}

func main() {
	racers := []Racer{}

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		nameAndPos := strings.Split(scanner.Text(), "-")
		if len(nameAndPos) != 2 {
			log.Fatal("Invalid format. Expected: NAME-POSITION")
		}
		pos, err := strconv.Atoi(nameAndPos[1])
		if err != nil {
			log.Fatalf("Invalid position: \"%s\". Expected: int\n", nameAndPos[1])
		}
		r := Racer{nameAndPos[0], pos}
		racers = append(racers, r)
	}

	// New in 1.8
	// https://golang.org/doc/go1.8#sort_slice
	// https://golang.org/pkg/sort/#Slice
	sort.Slice(racers, func(i, j int) bool { return racers[i].Pos < racers[j].Pos })

	for _, r := range racers {
		fmt.Printf("%s-%d\n", r.Name, r.Pos)
	}
}
