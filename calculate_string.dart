// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  return numbers.split(",").map(int.parse).fold(
        0,
        (previousValue, nextValue) => previousValue + nextValue,
      );
}
