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
  print(twoSum([3,2,4,9,5,10], 13));
}

List<int> twoSum(List<int> nums, int target) {
  int firstNum = 0, secondNum = 0;
  
  for(int i = 0; i < nums.length; i++) {
    for(int j = i + 1; j < nums.length; j++) {
      if(nums[i] + nums[j] == target) {
        firstNum = i;
        secondNum = j;
        break;
      } 
    }
    
  }
  return [firstNum, secondNum];
}
