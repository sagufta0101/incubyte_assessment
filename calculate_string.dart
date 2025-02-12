// Function to add numbers from given string.
int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimeters = r'[\n,]';

  if (numbers.startsWith("//")) {
    var parts = numbers.substring(2).split("\n");
    delimeters = RegExp.escape(parts[0]);
    numbers = parts.length > 1 ? parts.sublist(1).join("\n") : "";
  }

  List<String> numList = numbers.split(RegExp(delimeters));
  _checkForNegativeNumbers(numList);

  return numList.where((s) => s.isNotEmpty).map(int.parse).fold(
        0,
        (previousValue, nextValue) => previousValue + nextValue,
      );
}

// Helper function to check for negative numbers and throw an exception
void _checkForNegativeNumbers(List<String> numList) {
  List<int> negatives = numList
      .where((s) => s.isNotEmpty)
      .map(int.parse)
      .where((n) => n < 0)
      .toList();

  if (negatives.isNotEmpty) {
    throw ArgumentError(
        'Negative numbers not allowed: ${negatives.join(', ')}');
  }
}
