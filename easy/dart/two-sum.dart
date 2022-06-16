/**
 * Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 * You may assume that each input would have exactly one solution, and you may not use the same element twice.

 * You can return the answer in any order.
 * Input: nums = [2,7,11,15], target = 9
  Output: [0,1]
  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
  Example 2:

  Input: nums = [3,2,4], target = 6
  Output: [1,2]
  Example 3:

  Input: nums = [3,3], target = 6
  Output: [0,1]
*/

void main() {
  print(twoSum([3, 2, 4, 9, 5, 10], 13));
}

List<int> twoSum(List<int> nums, int target) {
  int firstNum = 0, secondNum = 0;

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        firstNum = i;
        secondNum = j;
        break;
      }
    }
  }
  return [firstNum, secondNum];
}

// /**
//  * The optimzed solution works as follows:
//  * instead of using two pointers to check each sum of the nums starting from the first index
//  * we can use map to store elements and their indexes while looping through nums
//  * e.g for nums = [2, 7. 11, 14], target = 9. At index 0 which is 2, the complement is the number you add to 2 to give 9, which is 7.
//  * So check if key 7 is in the map, if not add 2 : 0, to the map. 
//  * Continue looping from index 1 which is 7 the complement is 2. check if the complent 2 can be found in the map. yes it exists!
//  * So we return the index of 2 and index of 7 in a list -> [0, 1]. if we did not find shit we return an empty list
//  * 
//  */

List twoSumOptimized(List<int> nums, int target) {
  var map = {};
  // var list = [];
  for (int i = 0; i < nums.length; i++) {
    var complement = target - nums[i];
    var value = map[complement];
    if (value != null) {
      return [value, i];
    }
    // if (map.containsKey(complement)) {
    //   print(map[complement]);
    //   map.entries.forEach((e) => list.add(e.value));
    //   list.add(i);
    //   return list;
    // }
    map[nums[i]] = i;
  }
  return [];
}
