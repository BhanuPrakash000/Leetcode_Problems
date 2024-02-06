class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        merged_array= nums1+nums2
        
        merged_array.sort()
        
        m= len(merged_array)
        
        if m%2==0:
            mid=m//2
            c=merged_array[mid] + merged_array[mid - 1]
            s=c/2.0
            return s
        else:
            mit=int(m/2)
            return int(merged_array[mit])
        