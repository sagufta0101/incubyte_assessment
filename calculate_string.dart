// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimeters = '';

  if (numbers.startsWith("//")) {
    delimeters = r'[,]';
    var parts = numbers.substring(2).split("\n");
    delimeters = RegExp.escape(parts[0]);
    numbers = parts[1];
  } else {
    delimeters = r'[\n,]';
  }
  return numbers.split(RegExp(delimeters)).map(int.parse).fold(
        0,
        (previousValue, nextValue) => previousValue + nextValue,
      );
}

void main() {
  String input = '1\n2,3';
  int result = add(input);
  print('The sum of the numbers is: $result');
}
