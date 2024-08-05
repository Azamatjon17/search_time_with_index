import 'package:search_time_with_index/search_time_with_index.dart';

void main() {
  // Create an instance of the SearchTimeWithIndexBase class
  final searchUtil = SearchTimeWithIndexBase();

  // Example list of integers
  List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25];

  // Example list of strings
  List<String> stringList = [
    "apple",
    "banana",
    "cherry",
    "date",
    "fig",
    "grape",
    "kiwi"
  ];

  // Item to search for in the list
  int intItem = 15;
  String stringItem = "cherry";

  // Perform binary search on integers
  var binarySearchResultInt = searchUtil.searchBinary(intList, intItem);
  print('Binary Search on Integers:');
  print('Index: ${binarySearchResultInt["index"]}, '
      'Time: ${binarySearchResultInt["time"]} microseconds\n');

  // Perform linear search on integers
  var linearSearchResultInt = searchUtil.searchLinear(intList, intItem);
  print('Linear Search on Integers:');
  print('Index: ${linearSearchResultInt["index"]}, '
      'Time: ${linearSearchResultInt["time"]} microseconds\n');

  // Perform jump search on integers
  var jumpSearchResultInt = searchUtil.jumpSearch(intList, intItem);
  print('Jump Search on Integers:');
  print('Index: ${jumpSearchResultInt["index"]}, '
      'Time: ${jumpSearchResultInt["time"]} microseconds\n');

  // Perform binary search on strings
  var binarySearchResultStr = searchUtil.searchBinary(stringList, stringItem);
  print('Binary Search on Strings:');
  print('Index: ${binarySearchResultStr["index"]}, '
      'Time: ${binarySearchResultStr["time"]} microseconds\n');

  // Perform linear search on strings
  var linearSearchResultStr = searchUtil.searchLinear(stringList, stringItem);
  print('Linear Search on Strings:');
  print('Index: ${linearSearchResultStr["index"]}, '
      'Time: ${linearSearchResultStr["time"]} microseconds\n');

  // Perform jump search on strings
  var jumpSearchResultStr = searchUtil.jumpSearch(stringList, stringItem);
  print('Jump Search on Strings:');
  print('Index: ${jumpSearchResultStr["index"]}, '
      'Time: ${jumpSearchResultStr["time"]} microseconds\n');
}
