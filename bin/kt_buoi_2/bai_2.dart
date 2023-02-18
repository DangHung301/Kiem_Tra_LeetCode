void main(List<String> args) {
  print(squareIsWhite("a1"));
  print(squareIsWhite("h3"));
  print(squareIsWhite("c7"));
}
// đưa a, b ,c, ... thành 1, 2, 3, ...
// từ đó ta được 
// a1 = 11 => 1 + 1 = 2 => đen
// a2 = 12 => 1 + 2 = 3 => trắng
// a3 = 13 => 1 + 3 = 4 => đen
// quy luật: tổng các chữ số là chẵn thì ô đó là đen và ngược lại lẻ là ô trắng
bool squareIsWhite(String coordinates) {
  Map<String, int> mapColumn = {
    'a': 1,
    'b': 2,
    'c': 3,
    'd': 4,
    'e': 5,
    'f': 6,
    'g': 7,
    'h': 8,
  };
  int sum = 0;
  sum = mapColumn[coordinates[0]]! + int.parse(coordinates[1]);
  return sum % 2 == 1;
}
