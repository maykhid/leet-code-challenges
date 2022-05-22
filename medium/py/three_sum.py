import numpy as np
import collections as cls

class Solution:
    def threeSum(self, nums: list[int]) -> list[list[int]]:
        possibleSum = []
        i = 0
        while i < len(nums):
            j = i + 1
            while j < len(nums):
                k = j + 1
                while k < len(nums):
                    if nums[i] + nums[j] + nums[k] == 0:
                        sortedList = [nums[i], nums[j], nums[k]]
                        sortedList.sort()
                        possibleSum.append(sortedList)
                        # print([nums[i], nums[j], nums[k]]) 
                    k = k + 1
                j = j + 1
            i = i + 1
        # for i, triplet in possibleSum:
        #     j = i + 1
        #     while j < len(possibleSum):
        #         if (triplet == possibleSum[j]).all():
        #             print(possibleSum[j], '*')
            # for i, v in possibleSum:
            #     if (triplet == possibleSum[i + 1]).all():
            #         print(possibleSum[i + 1], '*')
            # print(triplet)
        i = 0
        while i < len(possibleSum):
            j = i + 1
            while j < len(possibleSum):
                if cls.Counter(possibleSum[i]) == cls.Counter(possibleSum[j]):
                    print(possibleSum[j])
                    del possibleSum[j]
                j = j + 1
            i = i + 1
        return possibleSum

# def equals(list: list, list2: list) -> bool:
#     for i in list2:
#         val = list.__contains__(i)
#     return list.__contains__(i)

# print(equals([1, 2, 3, 3], [1, 2, 3, 2]))

print(Solution.threeSum(Solution, [0, 0, 0, 0]))

# for i, x in enumerate([-1,0,1,2,-1,-4]):
#     print(i)