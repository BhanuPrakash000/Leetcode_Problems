class Solution:
    def commonFactors(self, a: int, b: int) -> int:
        r=0
        g=min(a,b)
        for i in range(1,g+1):
            if a%i==b%i==0:
                r+=1
        return r
        