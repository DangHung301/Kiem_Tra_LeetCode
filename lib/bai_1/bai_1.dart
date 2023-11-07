class Solution {
  bool squareIsWhite(String coordinates) {
    // trích xuất chỉ số hàng va chuyển đổi chuỗi ký tự thành một số nguyên
    int row = int.parse(coordinates[1]);
    // trích xuất ký tự đầu tiên của chuỗi coordinates, đó là chữ cái đại diện cho cột
    //lấy mã ASCII của ký tự đầu tiên trong chuỗi coordinates và trừ đi mã ASCII của ký tự ‘a’
    //Kết quả sẽ là một số nguyên, biểu thị cho vị trí cột của ô trên bàn cờ
    int col = coordinates.codeUnitAt(0) - 'a'.codeUnitAt(0);
    // nếu tổng của chỉ số cột và chỉ số hàng là số chẵn, ô vuông đó là ô trắng; ngược lại
    return (row + col) % 2 == 0;
  }
}
