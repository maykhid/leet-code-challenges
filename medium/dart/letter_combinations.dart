// Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

// A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

// Example 1:

// Input: digits = "23"
// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
// Example 2:

// Input: digits = ""
// Output: []
// Example 3:

// Input: digits = "2"
// Output: ["a","b","c"]

// Constraints:

// 0 <= digits.length <= 4
// digits[i] is a digit in the range ['2', '9'].

// import 'dart:svg';

var num_letter_combination = {
  "2": {"a", "b", "c"},
  "3": {"d", "e", "f"},
  "4": {"g", "h", "i"},
  "5": {"j", "k", "l"},
  "6": {"m", "n", "o"},
  "7": {"p", "q", "r", "s"},
  "8": {"t", "u", "v"},
  "9": {"w", "x", "y", "z"}
};

/**
 * take the string of numbers iterate through them.
 * for each number, iterate through them
 * 
 */

//! TODO
class Solution {
  List<int> letterCombinations(String digits) {
    return [];
  }
}

void main() {
  //
  num_letter_combination["2"]!.forEach((element) {
    print(element);
    num_letter_combination["3"]!.forEach((element) {
      print(element);
    });
  });

  // print(num_letter_combination["2"].);
}

// void main() {
//   // var arr = [1, 2, 3, 4, 4, 6, 7, 8, 9];
//   // var start = 0;
//   // var end = arr.length - 1;
//   // var target = 9;
//   // binarySearch(arr, start, end, target);
//   // var arr = [1, 2, 3, 4, 5, 6];
//   // var midIndex = (arr.length ~/ 2);
//   // print("mid is $midIndex");
//   // var leftArr = arr.getRange(0, midIndex);
//   // var rightArr = arr.getRange(midIndex, arr.length);
//   // print('$leftArr $rightArr');
// }

// ? Binary search impl

// binarySearch(arr, start, end, target) {
//   if (start > end) return false;
//   var midIndex = (start + end) ~/ 2;
//   // print(midIndex);

//   if (arr[midIndex] == target) {
//     print("Found at index $midIndex");
//   }

//   if (arr[midIndex] > target)
//     return binarySearch(arr, start, midIndex - 1, target);
//   else
//     return binarySearch(arr, midIndex + 1, end, target);
// }
