void main() {
  print(squareIsWhite("a1"));
  print(squareIsWhite("h3"));
  print(squareIsWhite("c7"));
}

bool squareIsWhite(String coordinates) {
  if (coordinates[0] == "a" ||
      coordinates[0] == "c" ||
      coordinates[0] == "e" ||
      coordinates[0] == "g") {
    if (int.parse(coordinates[1]) % 2 == 0) {
      return true;
    } else {
      return false;
    }
  } else {
    if (int.parse(coordinates[1]) % 2 == 1) {
      return true;
    } else {
      return false;
    }
  }
}
