class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        sing=0
        for num in nums:
            sing^=num
        return sing
        
