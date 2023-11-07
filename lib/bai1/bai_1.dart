class Solution {
  bool squareIsWhite(String coordinates) {
    int x = coordinates.codeUnitAt(0) - 'a'.codeUnitAt(0);
    int y = int.parse(coordinates[1]);
    return (x + y) % 2 == 0;
  }
}
