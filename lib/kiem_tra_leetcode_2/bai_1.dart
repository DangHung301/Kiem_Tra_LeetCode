void main() {
  List<int> nums = [6, 2, 6, 5, 1, 2];
  print(arrayPairSum(nums));
}

int arrayPairSum(List<int> nums) {
// 1,2,3,4 => 1,2 - 3,4 => 1+2
// 1,2,2,5,6,6 => 1,2 - 2,5 - 6,6 => 1+2+6
// => quy luật: sắp xếp từ nhỏ đến lớn, sau đó xếp các cặp là 2 số gần nhau nhất
// kết quả sẽ là tổng min của các cặp
// => tổng của các phần tử 0,2,4,6...
  int sum = 0;
  nums.sort();
  for (int i = 0; i < nums.length; i = i + 2) {
    sum += nums[i];
  }
  return sum;
}
