// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  } else {
    if (numbers.contains(",")) {
      List<String> parts = numbers.split(',');
      int sum = int.parse(parts[0]) + int.parse(parts[1]);
      return sum;
    }
    int num = int.parse(numbers);
    return num;
  }
}
