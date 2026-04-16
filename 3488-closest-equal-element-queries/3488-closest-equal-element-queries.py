from collections import defaultdict
import bisect

class Solution:
    def solveQueries(self, nums, queries):
        n = len(nums)
        
        # Step 1: map values to indices
        mp = defaultdict(list)
        for i, val in enumerate(nums):
            mp[val].append(i)
        
        res = []
        
        for q in queries:
            val = nums[q]
            indices = mp[val]
            
            # only one occurrence
            if len(indices) == 1:
                res.append(-1)
                continue
            
            # binary search position
            pos = bisect.bisect_left(indices, q)
            
            # neighbors
            left = indices[pos - 1] if pos > 0 else indices[-1]
            right = indices[pos + 1] if pos < len(indices) - 1 else indices[0]
            
            # circular distance
            dist1 = min(abs(q - left), n - abs(q - left))
            dist2 = min(abs(q - right), n - abs(q - right))
            
            res.append(min(dist1, dist2))
        
        return res