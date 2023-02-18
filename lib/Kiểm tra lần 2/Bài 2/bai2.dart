class Solution {
  bool squareIsWhite(String coordinates) {
    List<String> listChar = ["a", "b", "c", "d", "e", "f", "g", "h"];
    // Lấy vị trí của kí tự chuỗi trong coordinates.
    int char = listChar.indexOf(coordinates[0]);
    // Lấy số trong coordinates.
    int num = int.parse(coordinates[1]);

    // Kiểm tra xem có phải ô cờ đen không.
    if (char % 2 != 0 && num % 2 == 0) {
      return false;
    } else if (char % 2 == 0 && num % 2 != 0) {
      return false;
    }

    return true;
  }
}