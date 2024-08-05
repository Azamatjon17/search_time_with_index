import 'package:search_time_with_index/search_time_with_index.dart';
import 'package:test/test.dart';

void main() {
  group('SearchTimeWithIndexBase', () {
    final searchUtil = SearchTimeWithIndexBase();

    // Test data for integers
    final List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25];
    final int existingInt = 15;
    final int nonExistingInt = 100;

    // Test data for strings
    final List<String> stringList = [
      "apple",
      "banana",
      "cherry",
      "date",
      "fig",
      "grape",
      "kiwi"
    ];
    final String existingString = "cherry";
    final String nonExistingString = "mango";

    // Tests for binary search
    test('Binary Search - Integer: existing element', () {
      var result = searchUtil.searchBinary(intList, existingInt);
      expect(result['index'], equals(7));
      expect(result['time'],
          isNonNegative); // Check time is a non-negative integer
    });

    test('Binary Search - Integer: non-existing element', () {
      var result = searchUtil.searchBinary(intList, nonExistingInt);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });

    test('Binary Search - String: existing element', () {
      var result = searchUtil.searchBinary(stringList, existingString);
      expect(result['index'], equals(2));
      expect(result['time'], isNonNegative);
    });

    test('Binary Search - String: non-existing element', () {
      var result = searchUtil.searchBinary(stringList, nonExistingString);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });

    // Tests for linear search
    test('Linear Search - Integer: existing element', () {
      var result = searchUtil.searchLinear(intList, existingInt);
      expect(result['index'], equals(7));
      expect(result['time'], isNonNegative);
    });

    test('Linear Search - Integer: non-existing element', () {
      var result = searchUtil.searchLinear(intList, nonExistingInt);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });

    test('Linear Search - String: existing element', () {
      var result = searchUtil.searchLinear(stringList, existingString);
      expect(result['index'], equals(2));
      expect(result['time'], isNonNegative);
    });

    test('Linear Search - String: non-existing element', () {
      var result = searchUtil.searchLinear(stringList, nonExistingString);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });

    // Tests for jump search
    test('Jump Search - Integer: existing element', () {
      var result = searchUtil.jumpSearch(intList, existingInt);
      expect(result['index'], equals(7));
      expect(result['time'], isNonNegative);
    });

    test('Jump Search - Integer: non-existing element', () {
      var result = searchUtil.jumpSearch(intList, nonExistingInt);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });

    test('Jump Search - String: existing element', () {
      var result = searchUtil.jumpSearch(stringList, existingString);
      expect(result['index'], equals(2));
      expect(result['time'], isNonNegative);
    });

    test('Jump Search - String: non-existing element', () {
      var result = searchUtil.jumpSearch(stringList, nonExistingString);
      expect(result['index'], equals(-1));
      expect(result['time'], isNonNegative);
    });
  });
}
