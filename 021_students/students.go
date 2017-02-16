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

type Student struct {
	Num   int
	Score int
}

func (s Student) String() string {
	return fmt.Sprintf("%d-%d", s.Num, s.Score)
}

type ByScoreSorter []Student

func (ss ByScoreSorter) Len() int {
	return len(ss)
}
func (ss ByScoreSorter) Swap(i, j int) {
	ss[i], ss[j] = ss[j], ss[i]
}
func (ss ByScoreSorter) Less(i, j int) bool {
	return ss[i].Score > ss[j].Score
}

func main() {
	mapStudents := make(map[int]int)

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		numAndScore := strings.Split(scanner.Text(), "-")
		if len(numAndScore) != 2 {
			log.Fatal("Invalid input. Expected: NUMBER-SCORE")
		}

		num, numErr := strconv.Atoi(numAndScore[0])
		score, scoreErr := strconv.Atoi(numAndScore[1])
		if numErr != nil || scoreErr != nil {
			log.Fatal("Invalid roll number or score")
		}

		if highestScore, seen := mapStudents[num]; !seen || (seen && score > highestScore) {
			mapStudents[num] = score
		}
	}

	students := []Student{}
	for num, score := range mapStudents {
		students = append(students, Student{num, score})
	}
	sort.Sort(ByScoreSorter(students))
	for _, s := range students {
		fmt.Println(s)
	}
}
