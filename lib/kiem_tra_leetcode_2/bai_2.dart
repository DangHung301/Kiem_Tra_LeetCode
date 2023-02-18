void main() {
  String coordinates = "h3";
  print(squareIsWhite(coordinates));
}

bool squareIsWhite(String coordinates) {
  //cho a, b,c,d,...h là  1,2,3,4,...8
  //a+1 = 1+1=2 => đen
  //a+2 = 1+2 =3 => trắng
  //b+2 = 2+2 = 4 => đen
  //tổng chẵn = đen
  //tổng lẻ = trắng
  // lẻ + lẻ = chẵn => đen
  // lẻ + chẵn = lẻ => trắng
  // chẵn + chẵn = chẵn => đen
  Map<String, int> mapData = {
    'a' : 1,
    'b' : 2,
    'c' : 3,
    'd' : 4,
    'e' : 5,
    'f' : 6,
    'g' : 7,
    'h' : 8,
  };
  int sum = 0;
  sum = mapData[coordinates[0]]! + int.parse(coordinates[1]);
  return sum%2 == 1;
}
