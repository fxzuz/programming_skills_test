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

// PosSorter sorts racers by position
type PosSorter []Racer

func (rs PosSorter) Len() int {
	return len(rs)
}
func (rs PosSorter) Swap(i, j int) {
	rs[i], rs[j] = rs[j], rs[i]
}
func (rs PosSorter) Less(i, j int) bool {
	return rs[i].Pos < rs[j].Pos
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

	sort.Sort(PosSorter(racers))
	for _, r := range racers {
		fmt.Printf("%s-%d\n", r.Name, r.Pos)
	}
}
