///Bài 2
///
class Solution {
  bool squareIsWhite(String coordinates) {
    //tách coordinates thành 2 kí tự
    final list = coordinates.split('');
    //lấy mã asii của kí tự đầu tiên
    final num = list[0].toString().codeUnits[0];

    ///kiểm tra nếu num là chẵn và mã ascii của kí tự là lẻ
    ///hoặc num là lẻ và mã ascii của kí tự là chẵn
    ///thì trả về true, ngược lại trả về false.
    if ((num % 2 == 0 && int.parse(list[1]) % 2 != 0) ||
        (num % 2 != 0 && int.parse(list[1]) % 2 == 0)) {
      return true;
    }
    return false;
  }
}