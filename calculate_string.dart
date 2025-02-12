// Function to add numbers from given string.
int add(String numbers) {
  int returningVal = 0;
  if (numbers.isEmpty) {
    return returningVal;
  } else {
    if (numbers.contains(",")) {
      List<String> parts = numbers.split(',');
      returningVal = int.parse(parts[0]) + int.parse(parts[1]);
    } else {
      returningVal = int.parse(numbers);
    }
    return returningVal;
  }
}
