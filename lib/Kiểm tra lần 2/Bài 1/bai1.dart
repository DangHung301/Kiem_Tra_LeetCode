class Solution {
  int arrayPairSum(List<int> nums) {
	// Sắp xếp nums theo thứ tự từ bé đến lớn.
    nums.sort();

    int result = 0;

	// Cộng tổng các số vị trí chẵn của list nums.
    for (int i = 0; i < nums.length; i++) {
      result += nums[i];
      i++;
    }

    return result;
  }
}