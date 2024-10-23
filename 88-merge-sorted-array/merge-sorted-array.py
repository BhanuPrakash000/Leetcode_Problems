class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        p1=m-1
        p2=n-1
        p=m+n-1
        for p in range(p,-1,-1):
            if p2<0:
                break #if it doesn't has any more elements
            if p1>=0 and nums1[p1]>nums2[p2]:
                nums1[p]=nums1[p1]
                p1-=1 #moves pointer1 to left
            else:
                nums1[p]=nums2[p2]
                p2-=1 #moves pointer to left
        return nums1
        """
        Do not return anything, modify nums1 in-place instead.
        """
        