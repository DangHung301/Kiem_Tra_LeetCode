import '../lib/kiem_tra_leetcode.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      var isTrue;
      expect(awesome.isAwesome, isTrue);
    });
  });
}

void expect(bool isAwesome, isTrue) {}

void test(String s, Null Function() param1) {}

void setUp(Null Function() param0) {}

void group(String s, Null Function() param1) {}
