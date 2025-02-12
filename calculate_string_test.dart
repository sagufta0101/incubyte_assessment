import 'package:test/test.dart';
import 'string_calculator.dart';

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
  test('Numbers separated by newline delimeter', () {
    expect(add('1\n2,3'), equals(6));
  });
  test('Numbers separated by custom delimeter', () {
    expect(add('//;\n1;2'), equals(3));
  });
  test('Calling add with multiple negative numbers throws an exception', () {
    var exception = expectThrows<ArgumentError>(() => add('-1,2,-2,3,-3'));
    expect(exception.message,
        contains('Negative numbers not allowed: -1, -2, -3'));
  });
}

// Helper function to check for exceptions
T expectThrows<T extends Object>(Function func) {
  try {
    func();
  } catch (e) {
    if (e is T) {
      return e;
    }
    rethrow;
  }
  throw Exception('Expected exception of type $T but none was thrown.');
}
