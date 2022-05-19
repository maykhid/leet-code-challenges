# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given an integer, convert it to a roman numeral.

 

# Example 1:

# Input: num = 3
# Output: "III"
# Explanation: 3 is represented as 3 ones.
# Example 2:

# Input: num = 58
# Output: "LVIII"
# Explanation: L = 50, V = 5, III = 3.
# Example 3:

# Input: num = 1994
# Output: "MCMXCIV"
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

# Constraints:

# 1 <= num <= 3999

import enum
import math
from tokenize import String


def numLength(num: int) -> int:
    return int(math.log10(num))+1

class Roman(enum.Enum):
    thousand = 1
    hundred = 2
    tens = 3
    other = 4

def assignRomanNumeral(roman: Roman, num: int) -> String:
    romanNumeral = ""
    if (roman == Roman.thousand):
        i = 0
        while(i < num):
            romanNumeral += "M"
            i += 1
            # print(romanNumeral)

    elif (roman == Roman.hundred):
        i = num
        if (num == 4):
            romanNumeral += "CD"
        elif(num >= 5 and num < 9):
            romanNumeral += "D"
            while(i >= 6):
                romanNumeral += "C"
                i -= 1
        elif (num == 9):
            romanNumeral += "CM"
        else:
            i = 0
            while(i < num):
                romanNumeral += "C"
                i += 1
        print(romanNumeral)
        
    elif (roman == Roman.tens):
        i = num
        if (num == 4):
            romanNumeral += "XL"
        elif(num >= 5 and num < 9):
            romanNumeral += "L"
            while(i >= 6):
                romanNumeral += "X"
                i -= 1
        elif (num == 9):
            romanNumeral += "XC"
        else:
            i = 0
            while(i < num):
                romanNumeral += "X"
                i += 1
    else:
        i = num
        if (num == 4):
            romanNumeral += "IV"
        elif(num >= 5 and num < 9):
            romanNumeral += "V"
            while(i >= 6):
                romanNumeral += "I"
                i -= 1
        elif (num == 9):
            romanNumeral += "IX"
        else:
            i = 0
            while(i < num):
                romanNumeral += "I"
                i += 1
    return romanNumeral

class Solution:
    def intToRoman(self, num: int) -> String:
        romanNumeral = ""
        while(num != 0):
            if(numLength(num) == 4):
                newNum = num / 1000
                num %= 1000
                romanNumeral += assignRomanNumeral(Roman.thousand, int(newNum))
            elif(numLength(num) == 3):
                newNum = num / 100
                num %= 100
                romanNumeral += assignRomanNumeral(Roman.hundred, int(newNum))
            elif(numLength(num) == 2):
                newNum = num / 10
                num %= 10
                romanNumeral += assignRomanNumeral(Roman.tens, int(newNum))
            else:
                newNum = num / 1
                num %= 1
                romanNumeral += assignRomanNumeral(Roman.other, int(newNum))
        return romanNumeral

        
# The solution below is based of the best solution for python  on leet code. Very succinct🥲
# Apparently with how cumbersome my code was it faired well on leet code analytics with runtime speed 
# of approx 60ms and memory usage of 14.2MB compared to this which was 55ms and mem. usage of 13.9MB
def intToRoman( num):
    values = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]
    numerals = [ "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" ]
    res = ""
    for i, v in enumerate(values):
        res += (num//v) * numerals[i]
        num %= v
    return res

print(Solution.intToRoman(Solution, 1997))