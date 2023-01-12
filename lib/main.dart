/**
 * Bai 1
 * Link leetcode: https://leetcode.com/problems/roman-to-integer/submissions/876782681/
 */
int romanToInt(String s) {
//định nghia map
  Map<String, String> map = {
    'I': '1',
    'V': '5',
    'X': '10',
    'L': '50',
    'C': '100',
    'D': '500',
    'M': '1000',
    'IV': '4',
    'IX': '9',
    'XL': '40',
    'XC': '90',
    'CD': '400',
    'CM': '900',
  };
  //khai báo một biến kiểu số nguyên chứa kết quả
  int sum = 0;
  int idx = 0; // khai báo biến index chạy cùng i
  for (int i = 0; i < s.length; i++) {
    //kiểm tra trong khi idx nhỏ hơn độ dài của mảng, và kí tự tại idx và idx + 1 mà
    //có trong mảng thì  luôn 2 kí tự đó làm thành key của map và lấy giá trị tại key của map
    //cộng vào biến sum, vì là lấy kí tự hiện tại và kí tự sau rồi thì ta phải tăng idx lên 2 đơn vị để duyêt
    //tới kí tự tiếp theo, phải bỏ qua idx+1
    if ( (idx + 1) < s.length && map[s[idx] + s[idx + 1]] != null) {
      sum += int.parse(map[s[idx] + s[idx + 1]]!);
      idx += 2;
    } else if (idx < s.length && map[s[idx]] != null) {
      //trường hợp này trong khi idx nhỏ hơn độ dài của chuỗi và chỉ là trường hợp 1 kí tự la mã
      //nên sẽ lấy giá trị vói key là s[idx] trong map ra cộng vào biến sum
      sum += int.parse(map[s[idx]]!);
      idx++;
    }
  }
  return sum;
}
