void main(List<String> args) {
  print(romanToInt("III"));
  print(romanToInt("IV"));
  print(romanToInt("LVIII"));
  print(romanToInt("MCMXCIV"));
}
// tách s thành các chữ số nhỏ hơn
// vd III thành I, I, I ; IV thành I và V ; "LVIII" thành L,V,I,I,I 
// chạy từ cuối list lên đầu list
int romanToInt(String s) {
  int result = 0;
  int prev = 0;
  int current = 0;
  // khai báo 1 map chứa các chữ số la mã
  Map<String, int> romanToInt = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  List str = s.split('').reversed.toList(); // đưa s trở thành 1 list
  for (String a in str) { // lấy chữ số cuối cùng trong str
    current = romanToInt[a]!; // gán giá trị current bằng giá trị của a tương ứng trong map
    print(current);
    print(prev);
    if (prev <= current) {
      result += current;
    } else {
      // trường hợp prev > current thì lấy result - current
      result -= current; 
    }
    prev = current; 
  }
  return result;
}
