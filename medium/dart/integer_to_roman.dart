// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

// Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

// I can be placed before V (5) and X (10) to make 4 and 9.
// X can be placed before L (50) and C (100) to make 40 and 90.
// C can be placed before D (500) and M (1000) to make 400 and 900.
// Given an integer, convert it to a roman numeral.

// Example 1:

// Input: num = 3
// Output: "III"
// Explanation: 3 is represented as 3 ones.
// Example 2:

// Input: num = 58
// Output: "LVIII"
// Explanation: L = 50, V = 5, III = 3.
// Example 3:

// Input: num = 1994
// Output: "MCMXCIV"
// Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

// Constraints:

// 1 <= num <= 3999

import 'dart:math';

class Solution {
  String intToRoman(int num) {
    // // convert num to string
    // String numToString = num.toString();

    // for (int i = 0; i < numToString.length; i++) {
    //   if (numToString.length == 4) {
    //   } else if (numToString.length == 3) {
    //   } else if (numToString.length == 2) {
    //   } else {}
    // }

    // for (int i = 0; i < numLength(num); i++) {

    // }
    String romanNumeral = "";
    while (num != 0) {
      if (numLength(num) == 4) {
        double newNum = num / 1000;
        num %= 1000;
        print(num);
        romanNumeral += assignRomanNumeral(Roman.thousand, newNum.toInt());
      } else if (numLength(num) == 3) {
        double newNum = num / 100;
        num %= 100;
        print(num);
        romanNumeral += assignRomanNumeral(Roman.hundred, newNum.toInt());
      } else if (numLength(num) == 2) {
        double newNum = num / 10;
        num %= 10;
        print(num);
        romanNumeral += assignRomanNumeral(Roman.tens, newNum.toInt());
      } else {
        double newNum = num / 1;
        print(numLength(num));
        num %= 1;
        print(num);
        romanNumeral += assignRomanNumeral(Roman.other, newNum.toInt());
      }
    }
    return romanNumeral;
  }
}

//! find log10
double log10(num x) => log(x) / ln10;

//! find length of num
int numLength(int num) => log10(num).toInt() + 1;

String assignRomanNumeral(Roman roman, int num) {
  var romanNumeral = '';
  if (roman == Roman.thousand) {
    for (int i = 0; i < num; i++) {
      romanNumeral += "M";
    }
  } else if (roman == Roman.hundred) {
    if (num == 4) {
      romanNumeral += "CD";
    } else if (num >= 5 && num < 9) {
      romanNumeral += "D";
      for (int i = num; i >= 6; i--) {
        romanNumeral += "C";
      }
    } else if (num == 9) {
      romanNumeral += "CM";
    } else {
      for (int i = 0; i < num; i++) {
        romanNumeral += "C";
      }
    }
  } else if (roman == Roman.tens) {
    if (num == 4) {
      romanNumeral += "XL";
    } else if (num >= 5 && num < 9) {
      romanNumeral += "L";
      for (int i = num; i >= 6; i--) {
        romanNumeral += "X";
      }
    } else if (num == 9) {
      romanNumeral += "XC";
    } else {
      for (int i = 0; i < num; i++) {
        romanNumeral += "X";
      }
    }
  } else {
    if (num == 4) {
      romanNumeral += "IV";
      // break;
    } else if (num >= 5 && num < 9) {
      romanNumeral += "V";
      for (int i = num; i >= 6; i--) {
        romanNumeral += "I";
      }
    } else if (num == 9) {
      romanNumeral += "IX";
    } else {
      for (int i = 0; i < num; i++) {
        romanNumeral += "I";
      }
    }
  }
  return romanNumeral;
}

enum Roman { thousand, hundred, tens, other }


void main() {
  print(intToRoman2(2500));
}


/**
 * The solution below is based of the best solution on leet code. Very succinct🥲
 */

int convertToInt(double doub) => doub.toInt();
String intToRoman2(int num) {
  List M = ["", "M", "MM", "MMM"];
  List C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
  List X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
  List I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
  return M[convertToInt(num / 1000)] +
      C[convertToInt(num % 1000 / 100)] +
      X[convertToInt((num % 100) / 10)] +
      I[num % 10];
}