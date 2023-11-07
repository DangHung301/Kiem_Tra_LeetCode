String addStrings(String num1, String num2) {
  String resulst = '';
  if (num1.length < num2.length) {
    while (num1.length < num2.length) {
      num1 = '0' + num1;
    }
  } else {
    while (num2.length < num1.length) {
      num2 = '0' + num2;
    }
  }
  int more = 0;
  for (int i = num1.length - 1; i >= 0; i--) {
    int total = int.parse(num1[i]) + int.parse(num2[i]) + more;
    if (total >= 10) {
      resulst = (total % 10).toString() + resulst;
      more = 1;
    } else {
      resulst = total.toString() + resulst;
      more = 0;
    }
  }
  if (more == 1) {
    return '1' + resulst;
  }
  return resulst;
}