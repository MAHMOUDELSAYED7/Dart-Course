//!======================================================================================
//!  Asynchronous Programming in Dart
//!======================================================================================

// Asynchronous programming in Dart is facilitated using `Future` and `Stream`. It helps in handling tasks like I/O
// operations, network requests, or timers without blocking the main thread. Below are examples illustrating the use
// of `Future`, `async`/`await`, error handling, multiple Futures, and Streams.

//?---------------------------------------------------------------------------------------------------

//! Main function to demonstrate asynchronous programming concepts
void main() async {
  print("Start");

  //! Demonstrating Future with async/await
  await fetchData();

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating Future with multiple concurrent operations

  await Future.wait([task1(), task2()]);

//?---------------------------------------------------------------------------------------------------
  //! Demonstrating Streams

  print("Start receiving stream data:");
  await for (int number in numberStream()) {
    print("Number: $number");
  }

  print("End");
}

//?---------------------------------------------------------------------------------------------------
//! Define a function that simulates fetching data asynchronously

Future<void> fetchData() async {
  print("Fetching data...");
  try {
    // Simulating a network delay
    await Future.delayed(Duration(seconds: 2), () {
      print("Data fetched");
    });
  } catch (e) {
    print("Error: $e");
  }
}

//?---------------------------------------------------------------------------------------------------
//! Define multiple asynchronous tasks

Future<void> task1() async {
  await Future.delayed(Duration(seconds: 1));
  print("Task 1 completed");
}

Future<void> task2() async {
  await Future.delayed(Duration(seconds: 2));
  print("Task 2 completed");
}

//?---------------------------------------------------------------------------------------------------
//! Define a stream that emits values over time

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit values one by one
  }
}

//?---------------------------------------------------------------------------------------------------

//! Explanation:
//* - `fetchData`: Demonstrates using async/await for a single Future with error handling.
//* - `task1` and `task2`: Demonstrates running multiple Futures concurrently with Future.wait.
//* - `numberStream`: Demonstrates using a Stream to emit a sequence of values over time.

//?---------------------------------------------------------------------------------------------------

/*
! Summary
* Fetching Data with Future and async/await: Simulates fetching data with error handling.
* Running Multiple Futures Concurrently: Uses Future.wait to run and wait for multiple Futures.
* Using Stream: Demonstrates receiving a sequence of values emitted by a stream.
 */
