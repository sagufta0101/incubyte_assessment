// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimeters = r'[\n,]';

  if (numbers.startsWith("//")) {
    var parts = numbers.substring(2).split("\n");
    delimeters = RegExp.escape(parts[0]);
    numbers = parts.length > 1 ? parts.sublist(1).join("\n") : "";
  }

  return numbers
      .split(RegExp(delimeters))
      .where((s) => s.isNotEmpty)
      .map(int.parse)
      .fold(
        0,
        (previousValue, nextValue) => previousValue + nextValue,
      );
}

void main() {
  String input = '//;\n1;2';
  int result = add(input);
  print('The sum of the numbers is: $result');
}
