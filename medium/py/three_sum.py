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
                        possibleSum.sort()
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
            j = len(possibleSum) - 1
            while j != i:
                if cls.Counter(possibleSum[i]) == cls.Counter(possibleSum[j]):
                    print(possibleSum[j])
                    del possibleSum[j]
                j = j - 1
            i = i + 1
        return possibleSum


print(Solution.threeSum(Solution, [-1,0,1,2,-1,-4, -5, 5, -3, 6]))
