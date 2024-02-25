class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        k=0
        for i in range(len(digits)):
            k=k*10+ digits[i]
        k+=1
        x= [int(x) for x in str(k)]
        return x
        