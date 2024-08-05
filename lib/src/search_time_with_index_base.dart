import 'dart:math';

class SearchTimeWithIndexBase {
  Map<String, dynamic> searchBinary<T extends Comparable>(
    // dsdjkaskdS AS 
    //FSLKMDSALKDMLK 
    //SDKSDLKMSDLK
      List<T> data, T item) {
    int low = 0;
    int high = data.length - 1;
    int? mid;
    bool found = false;

    final startTime = DateTime.now();

    while (low <= high) {
      mid = (low + high) ~/ 2;

      if (data[mid] == item) {
        found = true;
        break;
      } else if (data[mid].compareTo(item) < 0) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    final endTime = DateTime.now();
    final timeTaken = endTime.difference(startTime).inMicroseconds;

    return {
      "index": found ? mid : -1,
      "time": timeTaken,
    };
  }

  Map<String, dynamic> searchLinear<T>(List<T> data, T item) {
    // Record the start time
    final startTime = DateTime.now();

    int index = -1;

    for (int i = 0; i < data.length; i++) {
      if (data[i] == item) {
        index = i; // Item found
        break;
      }
    }

    // Record the end time
    final endTime = DateTime.now();

    // Calculate the time taken
    final timeTaken = endTime.difference(startTime).inMicroseconds;

    return {
      "index": index, // Return -1 if the item is not found
      "time": timeTaken, // Time in microseconds
    };
  }

  Map<String, dynamic> jumpSearch<T extends Comparable>(List<T> data, T item) {
    int n = data.length;
    int step = sqrt(n).floor(); // Optimal block size is √n
    int prev = 0;

    // Record the start time
    final startTime = DateTime.now();

    // Find the block where the element may be present
    while (prev < n && data[prev].compareTo(item) < 0) {
      if (data[min(prev + step, n) - 1].compareTo(item) >= 0) {
        break;
      }
      prev += step;
    }

    // Perform a linear search in the identified block
    for (int i = prev; i < min(prev + step, n); i++) {
      if (data[i] == item) {
        // Record the end time
        final endTime = DateTime.now();

        // Calculate the time taken
        final timeTaken = endTime.difference(startTime).inMicroseconds;

        return {
          "index": i, // Return the index of the found item
          "time": timeTaken, // Time in microseconds
        };
      }
    }

    // Record the end time for not found case
    final endTime = DateTime.now();

    // Calculate the time taken
    final timeTaken = endTime.difference(startTime).inMicroseconds;

    return {
      "index": -1, // Return -1 if the item is not found
      "time": timeTaken, // Time in microseconds
    };
  }
}
