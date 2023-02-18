void main(List<String> args) {
  print(arrayPairSum([1, 4, 3, 2]));
  print(arrayPairSum([6, 2, 6, 5, 1, 2]));
}
// vd 1:
// All possible pairings (ignoring the ordering of elements) are:
// 1. (1, 4), (2, 3) -> min(1, 4) + min(2, 3) = 1 + 2 = 3
// 2. (1, 3), (2, 4) -> min(1, 3) + min(2, 4) = 1 + 2 = 3
// 3. (1, 2), (3, 4) -> min(1, 2) + min(3, 4) = 1 + 3 = 4  
// So the maximum possible sum is 4.

// vd 2: The optimal pairing is (2, 1), (2, 5), (6, 6). min(2, 1) + min(2, 5) + min(6, 6) = 1 + 2 + 6 = 9.

// ý tưởng từ hai Explanation trên ta thấy các cặp thích hợp nhất để gộp lại với nhau là khi list đã được sắp xếp lại
// vd 1: [1, 2, 3, 4] và vd 2: [1, 2, 2, 5, 6, 6] 
// các min của các cặp thì luôn nằm ở vị trí 0, 2, 4, ... khi đã sắp xếp

int arrayPairSum(List<int> nums) {
  nums.sort();
  int maxSum = 0;
  for (int i = 0; i < nums.length; i += 2) {
    maxSum += nums[i];
  }
  return maxSum;
}
