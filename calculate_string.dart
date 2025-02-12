// Function to add numbers from given string.
int add(String numbers) {
  int returningVal = 0;
  if (numbers.isEmpty) {
    return returningVal;
  }

  List<String> parts = numbers.split(",");
  for (final part in parts) {
    returningVal += int.parse(part);
  }
  return returningVal;
}
