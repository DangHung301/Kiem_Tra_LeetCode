List<List<int>> largeGroupPositions(String s) {
  List<int> codeOfS = s.codeUnits;
  List<List<int>> result = [];
  List<int> round = [];
  int timesToCheck = 0;
  var charToCheck = codeOfS[0];
  for (int i = 0; i < codeOfS.length; i++) {
    if (charToCheck != codeOfS[i]) {
      if (timesToCheck > 3) {
        round.add(i - 1);
        print("So thu 2 ${i - 1}");
      } else {
        round.clear;
        timesToCheck = 0;
      }
      charToCheck = codeOfS[i];
    } else {
      round.add(i);
      print("So dau tien $i");
      timesToCheck++;
    }
    print(round.length);
    if (round.length == 2) {
      print(round);
      result.add(round);
    }
  }
  return result;
}

void main() {
  print(largeGroupPositions("abbxxxxzzy"));
  print(largeGroupPositions("abc"));
  print(largeGroupPositions("abcdddeeeeaabbbcd"));
}