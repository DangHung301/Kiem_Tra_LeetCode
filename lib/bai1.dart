bool squareIsWhite(String coordinates) {
  //Kiểm tra độ dài chuỗi tọa độ là chẵn hay lẻ
  if (coordinates.length != 2) {
    return false;
  }
  final letter = coordinates[0]; // gán kí tự đầu tiên
  final number = int.tryParse(coordinates[1]); // chuyển kí tự thứ 2 thành int
  if ('abcdefg'.contains(letter) &&
      number != null &&
      number >= 1 &&
      number <= 8)
  // kiểm tra chữ cái có trong 'abcd...', số có trong 1-8
  {
    int columnIndex = 'abcdefgh'.indexOf(letter); // tính chỉ số cột
    int rowIndex = number - 1; // tính chỉ số hàng
    return (columnIndex + rowIndex) % 2 == 0; 
  }
  return false;
}

void main() {
  String coordinates = 'a1';
  if (squareIsWhite(coordinates)) {
    print('$coordinates là ô màu trắng');
  } else {
    print('$coordinates là ô màu đen');
  }
}
