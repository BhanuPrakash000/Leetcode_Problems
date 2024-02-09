class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        #print(len(nums))
        left, right = 0, len(nums)
        while left < right:
            mid = (left + right) >> 1
            #print(mid)
            if nums[mid] >= target:
                right = mid
            else:
                left = mid + 1
        return left