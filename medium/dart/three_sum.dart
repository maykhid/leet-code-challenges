// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

// Notice that the solution set must not contain duplicate triplets.

// Example 1:

// Input: nums = [-1,0,1,2,-1,-4]
// Output: [[-1,-1,2],[-1,0,1]]
// Example 2:

// Input: nums = []
// Output: []
// Example 3:

// Input: nums = [0]
// Output: []

// Constraints:

// 0 <= nums.length <= 3000
// -105 <= nums[i] <= 105

class Solution {
  /**
   * Loop through the list with shifting nodes. i.e using [-1,0,1,2,-1,-4] as example, on the first loop, i is at the first index [0] of the list
   * j is at the second index [1] and k is at the third index [2], if the sum of all values at those indexes are equal to zero 
   * save the values in a list. if not continue shift i.e i is [0], j is [2], k is [3]
   * 
   * Later I realised that using this method would make room for duplicate triplets 
   * e.g this -> [-1,0,1,2,-1,-4] would return this [[-1, 0, 1], [-1, 2, -1], [0, 1, -1]] the duplicate here is at index 0 and 2 ([-1, 0, 1] and [0, 1, -1])
   * Both are "Equal".
   * 
   * So later I check within the list to find the duplicates and remove one
   */
  List<List<int>> possibleSum = [];
  List<List<int>> threeSum(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j <= nums.length - 1; j++) {
        for (int k = j + 1; k <= nums.length - 1; k++) {
          print([nums[i], nums[j], nums[k]]);
          if (nums[i] + nums[j] + nums[k] == 0) {
            possibleSum.add([nums[i], nums[j], nums[k]]..sort()); // At this point the list is correct but there are duplicate triplets
          }
        }
      }
    }
  
    // at this point i remove duplicates
    // i starts from index 0 while j starts from the last index of the list
    for(int i = 0; i < possibleSum.length; i++) {
      for(int j = possibleSum.length - 1; j != i; j--) {
         if (possibleSum[i].equals(possibleSum[j])) {
          possibleSum.removeAt(j);
        } 
      }
    }
    return possibleSum;
  }
}

// equality checker
extension on List {
  bool equals(List list) {
    if (this.length != list.length) return false;
    return this.every((item) => list.contains(item));
  }
}

void main() {
  print(Solution().threeSum([-1,0,1,2,-1,-4]));
}
