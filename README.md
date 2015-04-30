# cal
My Ruby implementation of the Unix program Cal. The program takes a year and month from the user and returns a formatted calendar representation of that month/year combination. The program accounts for date oddities like leap years.

## How it Works
A user runs the program by inputting its name and two arguments, month and year (MM/YYYY).

> ./cal.rb 10/2015

outputs:

             October 2015
        Su Mo Tu We Th Fr Sa
                     1  2  3
         4  5  6  7  8  9 10
        11 12 13 14 15 16 17
        18 19 20 21 22 23 24
        25 26 27 28 29 30 31

A user can also see the calendar for a full year by inputting the program name an only a year (YYYY).

> ./cal.rb 2015
outputs:

                                     2015

              January               February               March
        Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                     1  2  3   1  2  3  4  5  6  7   1  2  3  4  5  6  7
         4  5  6  7  8  9 10   8  9 10 11 12 13 14   8  9 10 11 12 13 14
        11 12 13 14 15 16 17  15 16 17 18 19 20 21  15 16 17 18 19 20 21
        18 19 20 21 22 23 24  22 23 24 25 26 27 28  22 23 24 25 26 27 28
        25 26 27 28 29 30 31                        29 30 31
                                                    
               April                  May                   June
        Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                  1  2  3  4                  1  2      1  2  3  4  5  6
         5  6  7  8  9 10 11   3  4  5  6  7  8  9   7  8  9 10 11 12 13
        12 13 14 15 16 17 18  10 11 12 13 14 15 16  14 15 16 17 18 19 20
        19 20 21 22 23 24 25  17 18 19 20 21 22 23  21 22 23 24 25 26 27
        26 27 28 29 30        24 25 26 27 28 29 30  28 29 30
                              31                    
                July                 August              September
        Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                  1  2  3  4                     1         1  2  3  4  5
         5  6  7  8  9 10 11   2  3  4  5  6  7  8   6  7  8  9 10 11 12
        12 13 14 15 16 17 18   9 10 11 12 13 14 15  13 14 15 16 17 18 19
        19 20 21 22 23 24 25  16 17 18 19 20 21 22  20 21 22 23 24 25 26
        26 27 28 29 30 31     23 24 25 26 27 28 29  27 28 29 30
                              30 31                 
              October               November              December
        Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
                     1  2  3   1  2  3  4  5  6  7         1  2  3  4  5
         4  5  6  7  8  9 10   8  9 10 11 12 13 14   6  7  8  9 10 11 12
        11 12 13 14 15 16 17  15 16 17 18 19 20 21  13 14 15 16 17 18 19
        18 19 20 21 22 23 24  22 23 24 25 26 27 28  20 21 22 23 24 25 26
        25 26 27 28 29 30 31  29 30                 27 28 29 30 31
                                                    


The progam handles the following odd dates/edge cases:
* regular leap years
* century/400 year leap years
* February day count

##Goals
* Practice with Arrays, Hashes, and Strings
* Develop the logic of a non-trivial algorithm
* Programming to meet a (changing) specification
