void main(List<String> args) {
  print(largeGroupPositions("abbxxxxzzy"));
  print(largeGroupPositions("abc"));
  print(largeGroupPositions("abcdddeeeeaabbbcd"));
}

List<List<int>> largeGroupPositions(String s) {
  int n = s.length;
  List<List<int>> results = [];
  int j = 0;
  for (int i = 1; i <= n; i++) {
    if (i == n || s[i - 1] != s[i]) { // kiểm tra i có bằng độ dài n và số đằng trước có bằng số đằng sau
      if (i - j > 2) { // Một nhóm được coi là lớn nếu có từ 3 ký tự trở lên.
        // thêm vào result
      }
      j = i;
    }
  }

  return results;
}
