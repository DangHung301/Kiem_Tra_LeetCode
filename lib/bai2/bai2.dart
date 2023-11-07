class Bai2 {
  String addStrings(String num1, String num2) {
    // Khởi tạo last1 là vị trí cuối cùng của num1, last2 là vị trí cuối cùng của num2
    // Khai báo carry là biến nhớ sau khi cộng mỗi hàng (hàng đơn vị, hàng chục, hàng trăm, ...)
    String result = "";
    int last1 = num1.length - 1, last2 = num2.length - 1;
    int carry = 0;

    while (last1 >= 0 || last2 >= 0) {
      // Khai báo sum là tổng ở 1 hàng, khởi tạo bằng giá trị nhớ ở hàng trước
      int sum = carry;

      // Tính tổng ở 1 hàng
      if (last1 >= 0) {
        sum += (num1.codeUnitAt(last1) - "0".codeUnitAt(0));
        --last1;
      }
      if (last2 >= 0) {
        sum += (num2.codeUnitAt(last2) - "0".codeUnitAt(0));
        --last2;
      }

      // Thêm vào result chữ số ở hàng đơn vị của sum
      result += (sum % 10).toString();

      // Gán carry bằng với số còn lại của sum sau khi bỏ hàng đơn vị
      carry = sum ~/ 10;
    }

    // Nếu cộng xong 2 số mà vẫn còn nhớ thì thêm nốt biến nhớ vào result
    if (carry != 0) {
      result += carry.toString();
    }

    // Đảo ngược result và trả về
    return result.split("").reversed.join();
  }
}
