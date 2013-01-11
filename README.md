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

Write a program that accepts a number of ASCII values between 40 and 125 (both inclusive) and concatenates the corresponding characters to form a string. The progra
m accepts a multi-line input. The first line contains a number representing how many ASCII values are in the input. The subsequent lines contain the ASCII values th
emselves (one ASCII value per line).


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

During a car rally the time keeper wrote down the driver names along with their finishing positions in random order. Write a program to sort the names of the driver
s in ascending order of their finishing positions.


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

Write a program which will accept a set of numbers. For each number, it will calculate the sum of the cubes for the first 'n' natural numbers counting up to that nu
mber. The first line of the input should consist of a number representing how many numbers are in the input set. The subsequent lines contain the numbers themselves
 (one per line).

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

Write a program to validate the internet banking password for the above conditions. If the password meets the conditions then "VALID" should be printed, else "INVAL
ID" should be printed.

INPUT

    a2
    abcdEF12
    abcdEF12(*

OUTPUT

    INVALID
    VALID
    VALID
    
### 10. Divisors 

Write a program that evaluates the sum of all the divisors of a given number, other than the number itself. For example, if the number if 14, the divisors are 1,2,7
 and 14. If we exclude 14, the sum of the remaining divisors will be 1+2+7 = 10.

The program accepts a multi-line input. The first line contains a number representing how many numbers are being inputted. Subsequent lines contain the numbers them
selves. The inputted numbers should be between 1 and 100000 (inclusive). The output should be printed one per line corresponding to the sum of the divisors of the p
articular inputted number.

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
 
 A single input sequence will be provided, consisting of RGB values separated by "-". Each RGB combination will be separated by ",". The outputs should be comma sepa
 rated and in uppercase. Also, it should be checked if a color value is greater than 255. In such a case, the output for the corresponding combination should be give
 n as INVALID.
 
 Note: Number 10, which has a hexadecimal value of A, must be represented as "0A" and not as "A". The same rule applies to other single digit hexadecimal numbers.
 
 Example
 
 Suppose the following input sequence is supplied to the program:

  INPUT
  
    12-13-14,45-156-23,234-234-256
 
  OUTPUT
  
    #0C0D0E,#2D9C17,INVALID

### 12. Divisible by 7
 
  Write a program which will find all such numbers which are divisible by 7 but are not a multiple of 5, between 1000 and 1200 (both included). The numbers obtained should be printed in a comma separated sequence on a single line.
