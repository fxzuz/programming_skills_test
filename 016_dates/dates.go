package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
	"time"
)

// https://golang.org/pkg/time/#Parse
// http://stackoverflow.com/questions/14106541/go-parsing-date-time-strings-which-are-not-standard-formats
const SHORT_FORM = "2006-Jan-02"

var MONTHS = [12]string{
	"Jan",
	"Feb",
	"Mar",
	"Apr",
	"May",
	"Jun",
	"Jul",
	"Aug",
	"Sep",
	"Oct",
	"Nov",
	"Dec",
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		yearAndMonth := strings.Split(scanner.Text(), "-")
		if len(yearAndMonth) != 2 {
			log.Fatal("Invalid format. Expected: YEAR-MONTH")
		}

		year, yearErr := strconv.Atoi(yearAndMonth[0])
		month, monthErr := strconv.Atoi(yearAndMonth[1])
		if yearErr != nil || monthErr != nil || month > 11 {
			log.Fatal("Invalid year or month")
		}

		date := fmt.Sprintf("%d-%s-28", year, MONTHS[month])
		t, _ := time.Parse(SHORT_FORM, date)
		weekday := fmt.Sprintf("%s", t.Weekday())
		fmt.Println(strings.ToUpper(weekday))
	}
}
