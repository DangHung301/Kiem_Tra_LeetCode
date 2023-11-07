

bool squareIsWhite(String coordinates) {
  Map<String, int> resulst = {
    'a': 1,
    'b': 2,
    'c': 3,
    'd': 4,
    'e': 5,
    'f': 6,
    'g': 7,
    'h': 8
  };
  List<String> coordinatesList = coordinates.split('');

  int? num1 = resulst['${coordinatesList[0]}'];
  int? num2 = int.tryParse(coordinatesList[1]);

  if (num1! % 2 == 0 && num2! % 2 == 0 || num1 % 2 != 0 && num2! % 2 != 0)
    return false;
  return true;
}