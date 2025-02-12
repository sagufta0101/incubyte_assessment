// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  RegExp delimeters = RegExp(r'[\n,]');
  return numbers.split(delimeters).map(int.parse).fold(
        0,
        (previousValue, nextValue) => previousValue + nextValue,
      );
}

void main() {
  String input = '1\n2,3';
  int result = add(input);
  print('The sum of the numbers is: $result');
}
