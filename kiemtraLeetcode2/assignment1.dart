  int arrayPairSum(List<int> nums) {
    List<int> result = [];
      for(int i=0;i<nums.length-1;i++)
      {
        if(nums[i]<nums[i+1])
        {
          result.add(nums[i]);
        }
        else
        {
          result.add(nums[i+1]);
        }
        
      }
    
            if(nums.first<nums.last)
        {
          result.add(nums.first);
        }
        else
        {
          result.add(nums.last);
        }
    //result.add([nums.last,nums.first]);
    List<int> left=[];
    List<int> right=[];
    
    for(int j=0;j<result.length;j++)
    {
      if(j%2==0)
      {
        left.add(result[j]);
      }
      else
      {
        right.add(result[j]);
      }
    }
    print(result);
    print(left);
    print(right);
    return 10;
  }