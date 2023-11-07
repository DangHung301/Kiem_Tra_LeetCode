class Bai1 {
  bool squareIsWhite(String coordinates) {
    // Ý tưởng: Các ô đen có thứ tự hàng và cột (tính từ 1) đều chia hết hoặc đều không chia hết cho 2 => Nếu không thỏa mãn điều kiện này thì là ô trắng
    // Khởi tạo rowOrder là mã ASCII của hàng, columnOrder là mã ASCII của cột
    // Do mã ASCII của cả 'a' và '1' đều là lẻ nên không cần shift cho đúng thứ tự bắt đầu từ 1 => Trả về (rowOrder % 2 != columnOrder % 2)
    int rowOrder = coordinates.codeUnitAt(0),
        columnOrder = coordinates.codeUnitAt(1);
    return (rowOrder % 2 != columnOrder % 2);
  }
}
