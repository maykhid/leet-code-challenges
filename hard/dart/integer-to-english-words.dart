// Convert a non-negative integer num to its English words representation.

// Example 1:

// Input: num = 123
// Output: "One Hundred Twenty Three"
// Example 2:

// Input: num = 12345
// Output: "Twelve Thousand Three Hundred Forty Five"
// Example 3:

// Input: num = 1234567
// Output: "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"

// Constraints:

// 0 <= num <= 231 - 1

// List<String> tens = ['', 'Ten', 'Twenty', 'Thirty', 'Fourty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];
// List<String> teens = ['', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];
// List<String> unit = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'];

// int convertToInt(double doub) => doub.toInt();

// String readHundred(int num) {
//   num = convertToInt(num / 100);
//   return unit[num] + " Hundred";
// }

// String readUnit(int num) {
//   num = convertToInt(doub)
//   return "";
// }

// String readTeen(int num) {
//   return "";
// }

// void main() => print(readHundred(500));

// class Solution {
//   String numberToWords(int num) {
    // seperate numbers in a form they can be read starting from the left

    // read each separated set and assign the words
    // To read: each separated set should be checked to see where they fall e.g a set 100 - 999 is hundred, 10 - 99 is in tens
    //

    // String words = "";
    // // million

    // // hundred thousand

    // // tens thousand

    // // unit thousand

    // // hundred

    // // tens
    // if(num >= 1000000) {
    //   num /= 1000000;
    //   num.toInt();
    //   words += 'Million';
    // } else if(num >= 1000) {
    //   num / 1000;
    //   num.toInt();
    //   words += "Thousand";
    // } else {
    //   num / 100;
    //   num.toInt();
    //   words += "Hundred";
    // }

    // String fixedNumbers(int num) {

    // }

    // List<String> tens = ['', 'Ten', 'Twenty', 'Thirty', 'Fourty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];
    // List<String> teens = ['', 'Eleven', 'Twelve', 'Thir     teen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];

    // // unit
    // List<String> unit = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'];
//     return "";
//   }
// }
