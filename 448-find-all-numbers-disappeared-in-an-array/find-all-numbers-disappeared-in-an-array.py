class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        a = []
        n = len(nums)
        l=set(nums)
        nums.sort()
        for i in range(1, n+1):
            if i not in l:
                a.append(i)
        return a
