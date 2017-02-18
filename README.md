Programming Skills Test (Hands-on programming skills)
=============

* Loop Control
* Operators
* String Handling
* Arrays
* Hash table/Collections
* Regular Expressions
* Numbers
* Files & I/O

### 1. Maximum fluctuation
  
  Write a program that accepts a comma separated string of numbers depicting the daily stock price of AXY Company. The program should calculate the biggest daily fluctuation (in terms of percentage) of the stock price on any given day.

  For example, let us suppose the following is the input string:

  INPUT
  
    20,23,25,30,22,21,16

  Then the corresponding biggest fluctuation is:

  OUTPUT
  
    26.6666666666667 (As the maximum fluctuation in price is between 22 and 30)

### 2. Palindromes

  Write a program that accepts 4 words as input (one per line) and identifies whether they are palindromes. A palindrome is a word that reads the same when read back to front. The program should print the alphabetically sorted list of palindromes (one per line). The program output should be in lowercase.
  
  INPUT

    waas
    gaag
    haaha
    ABBA

  OUTPUT

    abba
    gaag
    
### 3. Area of the square

Write a program which will take the volume of the cube as its input. The program should calculate the area of a square whose side is half the length of the side of 
the cube. The program should print the area of the square. 

Definitions:

Volume of cube = a*a*a, where a is the side of a cube

Area of Square = b*b, where b is the side of the square

For example, let us suppose the following is the volume inputted to the program:

  INPUT
  
    8
    27

Then the corresponding output will be as follows:

  OUTPUT

    1
    2.25

### 4. First and last digit of the sum

Write a program which will accept a number as its input. You are required to calculate the sum of the first and last digits of the square of the number given as inp
ut. In case the square of the number is a single digit number then the square should be printed as it is.

For example, let us suppose the following input is given to the program:

  INPUT

    3
    5
    6

Then the corresponding output should be:

  OUTPUT

    9
    7
    9
    
### 5. Number to ASCII

Write a program that accepts a number of ASCII values between 40 and 125 (both inclusive) and concatenates the corresponding characters to form a string. The program accepts a multi-line input. The first line contains a number representing how many ASCII values are in the input. The subsequent lines contain the ASCII values themselves (one ASCII value per line).


The following is an example of a valid input:

INPUT

    5 (this indicates the total number of ASCII values in the input set)
    65
    67
    69
    70
    71

The output is printed as a string. The ASCII value of A is 65, C is 67, E is 69, F is 70, G is 71 and therefore the output will be as follows:

OUTPUT

    ACEFG

### 6. Sort racers

During a car rally the time keeper wrote down the driver names along with their finishing positions in random order. Write a program to sort the names of the drivers in ascending order of their finishing positions.


For example, let us suppose the following input is given to the program:

INPUT

    Eddie-3
    Michael-1
    Nica-4
    Montoya-6

Then the program should print the output as follows:

OUTPUT

    Michael-1
    Eddie-3
    Nica-4
    Montoya-6

### 7. Print initial caps

Write a program which will accept three sentences (one sentence per line) and print the words having Initial Caps within the sentences. Below is an example.

Here is an example. If the below three sentences are given to the program as input,

INPUT

    This is a Program
    Coding test of Initial Caps
    the program Will Test You

Then, the output would look like:

OUTPUT

    This
    Program
    Coding
    Initial
    Caps
    Will
    Test
    You
    
### 8. Cubes

Write a program which will accept a set of numbers. For each number, it will calculate the sum of the cubes for the first 'n' natural numbers counting up to that number. The first line of the input should consist of a number representing how many numbers are in the input set. The subsequent lines contain the numbers themselves (one per line).

Here is an example of how the input and output would look: 

INPUT

    3 (this indicates the total count of numbers in the input set)
    1
    2
    4

OUTPUT

    1
    9
    100
    
### 9. Password checker

A bank requires its clients to change their internet banking passwords based on the following conditions:

1. Alphabets between A-Z or a-z (inclusive) are allowed 

2. The number of alphabets should not be less than 4 

3. Numbers between 0-9 (inclusive) are allowed 

4. The count of numbers in the password should not be less than 2 

Write a program to validate the internet banking password for the above conditions. If the password meets the conditions then "VALID" should be printed, else "INVALID" should be printed.

INPUT

    a2
    abcdEF12
    abcdEF12(*

OUTPUT

    INVALID
    VALID
    VALID
    
### 10. Divisors 

Write a program that evaluates the sum of all the divisors of a given number, other than the number itself. For example, if the number if 14, the divisors are 1,2,7 and 14. If we exclude 14, the sum of the remaining divisors will be 1+2+7 = 10.

The program accepts a multi-line input. The first line contains a number representing how many numbers are being inputted. Subsequent lines contain the numbers themselves. The inputted numbers should be between 1 and 100000 (inclusive). The output should be printed one per line corresponding to the sum of the divisors of the particular inputted number.

Below is some example input and output:

INPUT

    4 (this represents how many numbers exist in the input set)
    13
    15
    10
    6

OUTPUT

    1
    9
    8
    6

Note: In case of input data being supplied to the question, it should be assumed to be a console input.

### 11. RGB numbers

Write a program which will convert the given RGB input values into the corresponding hexadecimal values preceded with a # sign.
 
A single input sequence will be provided, consisting of RGB values separated by "-". Each RGB combination will be separated by ",". The outputs should be comma separated and in uppercase. Also, it should be checked if a color value is greater than 255. In such a case, the output for the corresponding combination should be given as INVALID.
 
 Note: Number 10, which has a hexadecimal value of A, must be represented as "0A" and not as "A". The same rule applies to other single digit hexadecimal numbers.
 
 Example
 
 Suppose the following input sequence is supplied to the program:

  INPUT
  
    12-13-14,45-156-23,234-234-256
 
  OUTPUT
  
    #0C0D0E,#2D9C17,INVALID

### 12. Divisible by 7
 
  Write a program which will find all such numbers which are divisible by 7 but are not a multiple of 5, between 1000 and 1200 (both included). The numbers obtained should be printed in a comma separated sequence on a single line.

### 13. Rates and cents

Write a program to calculate the bill amount, in cents, for the units of power consumed. Following are the rates applicable:

1. First 0-100 units: 60 cents per unit
2. Next 200 units: 70 cents per unit
3. Beyond 300 units: 80 cents per unit

The program should accept three different usage unit readings.

Example

If the following inputs are supplied:

INPUT

    305
    180
    120

Then, the output should be:

OUTPUT

    20400
    11600
    7400

### 14. Sum two lines 

  Write a program which will print the sum of parallel numbers in two input strings (one input string per line). The numbers in each string will be separated by commas. The program will print the individual parallel sum of numbers in a line, separated by commas.


INPUT

    1,2,3,4,5,6,7,8,9
    1,1,1,1,1,1,1,1,1

OUTPUT

    2,3,4,5,6,7,8,9,10

### 15. A frog hops

  Kermit, a frog hops in a particular way such that:
1. He hops 20cm in the first hop, 10cm in the second hop and 5cm in the third hop.
2. After three hops Kermit rests for a while and then again follows the same hopping pattern.

  Calculate the total distance travelled by Kermit (in centimeters) for the provided number of hops. Exactly 4 numbers of hops will be provided to the program (one number per line) as per the below example.

INPUT
Suppose the following number of hops is provided to the program:

    4
    6
    3
    5

OUTPUT
Then the total distance covered should be displayed as follows:

    55
    70
    35
    65

### 16. Dates format

  Write a program which will take the year (yyyy) and the numeric sequence of the month (0-11) as its input. The program will return the day on which the 28th of that particular month and year falls. The input can consist of two year-month combinations, one combination per line.

The numeric sequence of months is as follows:

0 – Jan
1 – Feb
2 – March
and so on......

The format for supplying the input is:

1999-5

Where 1999 is the year and 5 is the numeric sequence of the month (corresponding to June). The program should display the day on which June 28, 1999 fell, and in this case the output will be MONDAY. 

The output should be displayed in uppercase letters.

INPUT

    1999-5
    1998-6

OUTPUT

    MONDAY
    TUESDAY

### 17. Employee and events

Ross is an event organizer. He has received data regarding the participation of employees in two different events. Some employees have participated in only one event and others have participated in both events. Ross now needs to count the number of employees who have taken part in both events. The records received by Ross consist of employee ids, which are unique. Write a program that accepts the employee ids participating in each event (the first line relates to the first event and the second line relates to the second event). The program should print the number of common employee ids in both the events.

INPUT

    1001,1002,1003,1004,1005
    1106,1008,1005,1003,1016,1017,1112

Now the common employee ids are 1003 and 1005, so the program should give the output as:

OUTPUT

    2

### 18. Filter numbers

  Write a program that prints the numbers between 258 and 393 (both inclusive) which do not end with 5. The program should print the output so as to have one value per line. The output would therefore follow the below format:


OUTPUT

    value1
    value2
    value3
    .
    .
    .
    .
    .

### 19. Username

  Sam wants to select a username in order to register on a website.

  The rules for selecting a username are:

1. The minimum length of the username must be 5 characters and the maximum may be 10.
2. It should contain at least one letter from A-Z
3. It should contain at least one digit from 0-9
4. It should contain at least one character from amongst @#*=
5. It should not contain any spaces

  Write a program which accepts 4 usernames (one username per line) as input and checks whether each of them satisfy the above mentioned conditions.
  If a username satisfies the conditions, the program should print PASS (in uppercase)
  If a username fails the conditions, the program should print FAIL (in uppercase)

Suppose the following usernames are supplied to the program:

INPUT

    1234@a
    ABC3a#@
    1Ac@
    ABC 3a#@

OUPTUT

    FAIL
    PASS
    FAIL
    FAIL

### 20. Distance travelled

Write a program to calculate the distance travelled by a car at different time intervals. The initial velocity of the car is 36 km/hr and the constant acceleration is 5 m/s2.

The formula to calculate distance is:

Distance Travelled = u*t+((a*t*t)/2) where,
u = initial velocity of the car (36 km/hr)
a = acceleration of the car (5 m/s2)
t = time duration in seconds

The program should accept 2 time intervals as the input (one time interval per line) and print the distance travelled in meters by the car (one output per line).

Definitions:
1 kilometer = 1000 meters
1 hour = 3600 seconds

Let us suppose following are the inputs supplied to the program

INPUT

    10
    8

OUTPUT

    350
    240

### 21. Students

Write a program that accepts 10 student records (roll number and score) and prints them in decreasing order of scores. In case there are multiple records pertaining to the same student, the program should choose a single record containing the highest score. The program should be capable of accepting a multi-line input. Each subsequent line of input will contain a student record, that is, a roll number and a score (separated by a hyphen). The output should consist of the combination of roll number and corresponding score in decreasing order of score.

INPUT

    1001-40
    1002-50
    1003-60
    1002-80
    1005-35
    1005-55
    1007-68
    1009-99
    1009-10
    1004-89

OUTPUT

    1009-99
    1004-89
    1002-80
    1007-68
    1003-60
    1005-55
    1001-40 

### 22. Christmas structure

Write a program which will print the below structures according to the input provided to the program. The program should accept 3 inputs in the form of numbers between 1 and 9, both inclusive (one number per line) and then generate the corresponding structures based on the input.

Suppose the following sequence of numbers is supplied to the program:

INPUT

    3
    2
    4

OUTPUT

      1
     2 2
    3 3 3
     1
    2 2
       1
      2 2
     3 3 3
    4 4 4 4 

### 23. ASCII values sum 

Write a program which will accept a single pair of strings separated by a comma; the program should calculate the sum of ascii values of the characters of each string. The program should then subtract the sum of the ascii values of the second string from the sum of the ascii values of the first string.


INPUT

    123ABC,456DEF

Then the sum of the ascii values of the characters in '123ABC' is 348 and in '456DEF' it is 366. The Difference between these numbers is 348 – 366 = -18 
The corresponding output to be printed by the program is: 

OUTPUT

    -18

### 24. Count vowels

Write a program that accepts 5 sentences as input (one sentence per line) and counts the number of vowels (a,e,i,o,u,A,E,I,O,U) occurring in each sentence. The program should print the vowel count corresponding to each of the five sentences as shown in the below example. 

INPUT

    This is a test
    The Fox and the Hound
    May the force be with you
    Are you talking to me
    Go West

OUTPUT

    4
    6
    8
    8
    2


### 25. Convert to int

Write a program which accepts 3 input values (one per line) and checks whether they can be converted to their corresponding int values. If any particular value is successfully converted, then the original inputted value should be printed and if it cannot, the program should print "INVALID" in uppercase.

INPUT

    123 4
    testing
    9

OUTPUT

    INVALID
    INVALID
    9

### 26. HEX values of letters 

Write a program which prints the hexadecimal values of the letters from A to Z. The output should be in uppercase.

The program should print the output in the following format:

OUTPUT

    value1
    value2
    value3
    .
    .
    .
    .
    .


### 27. 

Write a program which prints the numbers between 2 and 20000 (both inclusive) whose sixth root is an integer and which are a square of a number and also a cube of a number. An example of such a number is 64 since its sixth root is 2. 64 is also the square of 8 and cube of 4. 

OUTPUT

    Num1
    Num2
    Num3

### 28. Valid ip address

Write a program which will validate four inputted ip addresses (one per line). A valid ip address must follow the form xxx.xxx.xxx.xxx where xxx is a number from 0-255. The program should print "VALID" if the ip address is valid, and "INVALID" if the ip address is invalid. 

Example:

INPUT

    12.12.13.14.
    256.245.234.221
    1.2.3.4
    23.24.25.26.

OUTPUT

    INVALID
    INVALID
    VALID
    INVALID

### 29. Dec to bin 

Write a program which accepts 4 integer values (one per line) and converts them to their corresponding 16 bit binary values. The output should be printed one value per line.

INPUT

    8
    10
    17
    23

OUTPUT

    0000000000001000
    0000000000001010
    0000000000010001
    0000000000010111


### 30. Valid dates

Write a program that accepts four dates (one per line) and checks to see if they are in the date format "mm-dd-yyyy" (month-day-year). If the date is found to be in the valid format, the program should print "VALID", if not, the program should print "INVALID". 

Example:

INPUT

    01-01-1999
    13-11-1999
    10-30-1999
    1999-01-02

OUTPUT

    VALID
    INVALID
    VALID
    INVALID
