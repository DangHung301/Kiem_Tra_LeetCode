class Solution {
  int romanToInt(String s) {
    String temp = "";
    int result = 0;

    for (int i = 0; i < s.length; i++) {
      temp += s[i];

      if (temp == "M") {
        result += 1000;
        temp = "";
      }

      if (temp == "C") {
        if (i + 1 != s.length) {
          temp += s[i + 1];
        }

        if (temp == "CM") {
          result += 900;
          temp = "";
          i++;
        } else if (temp == "CD") {
          result += 400;
          temp = "";
          i++;
        } else {
          result += 100;
          temp = "";
        }
      }

      if (temp == "D") {
        result += 500;
        temp = "";
      }

      if (temp == "X") {
        if (i + 1 != s.length) {
          temp += s[i + 1];
        }

        if (temp == "XC") {
          result += 90;
          temp = "";
          i++;
        } else if (temp == "XL") {
          result += 40;
          temp = "";
          i++;
        } else {
          result += 10;
          temp = "";
        }
      }

      if (temp == "L") {
        result += 50;
        temp = "";
      }

      if (temp == "I") {
        if (i + 1 != s.length) {
          temp += s[i + 1];
        }

        if (temp == "IX") {
          result += 9;
          temp = "";
          i++;
        } else if (temp == "IV") {
          result += 4;
          temp = "";
          i++;
        } else {
          result += 1;
          temp = "";
        }
      }

      if (temp == "V") {
        result += 5;
        temp = "";
      }
    }
    return result;
  }
}