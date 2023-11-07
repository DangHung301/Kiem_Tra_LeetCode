bool squareIsWhite(String coordinates) {
  int column =
      coordinates.codeUnitAt(0) - 'a'.codeUnitAt(0); // chuyển chữ thành số
  int row =
      int.parse(coordinates[1]) - 1; // chuyển đối số sao cho 1 bắt đầu = 0

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      if (i == row && j == column) {
        return (i + j) % 2 == 0;
      }
    }
  }
  return false;
}

void main() {
  String square1 = "a5";
  String square2 = "c6";
  String square3 = "h8";

  bool isSquare1White = squareIsWhite(square1);
  bool isSquare2White = squareIsWhite(square2);
  bool isSquare3White = squareIsWhite(square3);

  print("$square1 có màu trắng: $isSquare1White");
  print("$square2 có màu trắng: $isSquare2White");
  print("$square3 có màu trắng: $isSquare3White");
}
