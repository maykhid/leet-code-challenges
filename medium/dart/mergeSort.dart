mergeSort(arr) {
  if (arr.length < 2) {
    return arr;
  }
  var midIndex = arr.length ~/ 2;
  var leftArr = arr.sublist(0, midIndex);
  var rightArr = arr.sublist(midIndex, arr.length);
  print("splitting $arr");
  return merge(mergeSort(leftArr), mergeSort(rightArr));
}

merge(leftArr, rightArr) {
  // print("running merge...");
  var resultArr = [];
  var leftIndex = 0;
  var rightIndex = 0;
  int runtimes = 0;

  print("Incoming for merge $leftArr $rightArr ******");

  while (leftIndex < leftArr.length && rightIndex < rightArr.length) {
    if (leftArr[leftIndex] < rightArr[rightIndex]) {
      print("adding $leftArr to $resultArr");
      resultArr.add(leftArr[leftIndex]);

      leftIndex += 1;
      print("from if $resultArr");
    } else {
      print("adding $rightArr to $resultArr");
      resultArr.add(rightArr[rightIndex]);

      rightIndex += 1;
      print("from else $resultArr");
    }
    runtimes++;
    print('runtime $runtimes');
  }
  // print("not on loop $resultArr");
  return resultArr + leftArr.sublist(leftIndex) + rightArr.sublist(rightIndex);
}

void main() {
  List<int> arr = [6, 1, 23, 3,];
  print(mergeSort(arr));
  // print(smallestSubarray(8, [4, 2, 2, 7, 8, 1, 2, 8, 10]));
}

// ? solution for smallest subarray
// final int maxInt = (double.infinity is int) ? double.infinity as int : ~minInt;
// final int minInt =
//     (double.infinity is int) ? -double.infinity as int : (-1 << 63);

// int smallestSubarray(int targetSum, List<int> arr) {
//   int minWindowSize = maxInt;
//   int currentWindowSum = 0;
//   int windowStart = 0;
//   for (int windowEnd = 0; windowEnd < arr.length; windowEnd++) {
//     currentWindowSum += arr[windowEnd];
//     // print(currentWindowSum >= targetSum ? "Run while loop" : "Skip while loop");

//     while (currentWindowSum >= targetSum) {
//       print("windowEnd $windowEnd - windowStart $windowStart");
//       minWindowSize = min(minWindowSize, windowEnd - windowStart + 1);
//       print("So minWindow size is: $minWindowSize");
//       currentWindowSum -= arr[windowStart];
//       windowStart++;
//     }
//   }
//   return minWindowSize;
// }

// f(n) {
//   print("starting code with $n");
//   if (n == 0) {
//     print("$n\th operation comes to close");
//   }

//   for (int i = 0; i < n; i++) {
//     print("for loop with $i");
//     f(n - 1);
//   }
// }

// fact(x) {
//   if (x == 1) {
//     return 1;
//   } else {
//     return x * fact(x - 1);
//   }
// }
