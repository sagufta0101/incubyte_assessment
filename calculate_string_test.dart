import 'package:test/test.dart';
import 'calculate_string.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(''), equals(0));
  });
  test('Single number returns the number', () {
    expect(add('1'), equals(1));
  });
  test('Two numbers returns their sum', () {
    expect(add('1,5'), equals(6));
  });
  test('Multiple numbers returns their sum', () {
    expect(add('1,2,3,4,5'), equals(15));
  });
}
