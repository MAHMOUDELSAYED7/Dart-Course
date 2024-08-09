//!======================================================================================
//! Isolate in Dart
//!======================================================================================
/*
 In Dart, isolates are a powerful feature that allows you to run code in parallel without sharing memory.They are similar
 to threads in other programming languages but are more secure and lightweight because each isolate has its own memory and
 event loop, preventing issues like race conditions.

! Understanding Isolates
 Isolates: An isolate is an independent worker that runs on its own thread. Each isolate has its own memory heap, which means
 no data is shared between isolates. Instead of shared memory, isolates communicate by passing messages through ports
 (similar to message-passing systems in concurrent programming).

 Main Isolate: When you run a Dart program, it starts in the main isolate. This isolate runs your main application code.
 If you need to perform heavy computation or parallel tasks, you can spawn new isolates to handle those tasks.

! When to Use Isolates
 Heavy Computation: If you have a CPU-bound task (like complex calculations), running it on the main isolate can block the event loop,
 making your app unresponsive. By offloading this task to another isolate, you can keep the main isolate free to handle UI updates
 and other tasks.

 Parallel Processing: If you need to process data in parallel, isolates are an ideal solution since each isolate can run independently
 on different cores.
 */
//!=====================================================================================================================

import 'dart:convert';
import 'dart:isolate';
import 'dart:io';

//! Basic Example of Isolates
// ReceivePort: A port that receives messages. The main isolate creates this to get the result from the spawned isolate.
// SendPort: A port that sends messages. We pass this port to the new isolate so it can send the result back.
// Isolate.spawn: This spawns a new isolate. The first argument is the entry point for the isolate (a top-level function),
// and the second is the data to be sent to the new isolate.

// The function that will run in a separate isolate
void calculateSum(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  // Send the result back to the main isolate
  sendPort.send(sum);
}

void main() async {
  // Create a ReceivePort to get messages from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate
  await Isolate.spawn(calculateSum, receivePort.sendPort);

  // Wait for the result from the isolate
  int result = await receivePort.first;
  print('The sum is $result');
}
//!=====================================================================================================================

//! Example with Bi-directional Communication
// Bi-directional Communication: In this example, the main isolate sends a number to the worker isolate and receives the doubled
// resultback. Dynamic Messaging: The worker isolate can receive different messages, perform computations, and send the results back.

void workerIsolate(SendPort mainSendPort) async {
  // Create a ReceivePort to receive messages from the main isolate
  ReceivePort workerReceivePort = ReceivePort();

  // Send the worker's send port back to the main isolate
  mainSendPort.send(workerReceivePort.sendPort);

  // Listen for messages from the main isolate
  await for (var message in workerReceivePort) {
    int data = message[0];
    SendPort replyPort = message[1];

    // Perform some computation
    int result = data * 2;

    // Send the result back to the main isolate
    replyPort.send(result);
  }
}

void main() async {
  // Create a ReceivePort to get the worker's send port
  ReceivePort receivePort = ReceivePort();

  // Spawn the isolate
  await Isolate.spawn(workerIsolate, receivePort.sendPort);

  // Get the worker's SendPort
  SendPort workerSendPort = await receivePort.first;

  // Create a new ReceivePort for receiving the result
  ReceivePort responsePort = ReceivePort();

  // Send a message to the worker isolate
  workerSendPort.send([42, responsePort.sendPort]);

  // Wait for the result from the worker isolate
  int result = await responsePort.first;
  print('The result is $result'); // The result is 84
}
//!=====================================================================================================================

//!Spawning Multiple Isolates for Parallel Processing
// This example demonstrates how to spawn multiple isolates to perform parallel computations. Each isolate will calculate
// the sum of a subset of numbers, and the main isolate will collect and sum these partial results.

// Function to calculate the sum of numbers in a range
void sumInRange(List<dynamic> args) {
  int start = args[0];
  int end = args[1];
  SendPort sendPort = args[2];

  int sum = 0;
  for (int i = start; i < end; i++) {
    sum += i;
  }

  // Send the result back to the main isolate
  sendPort.send(sum);
}

void main() async {
  print('Spawning Multiple Isolates for Parallel Processing');

  num totalSum = 0;
  num numIsolates = 4;
  num rangeSize = 250000000; // Divide the work among isolates

  // Create a ReceivePort to get results from all isolates
  ReceivePort receivePort = ReceivePort();

  // Spawn multiple isolates
  for (int i = 0; i < numIsolates; i++) {
    num start = i * rangeSize;
    num end = start + rangeSize;

    // Spawn an isolate with the range and send port
    await Isolate.spawn(sumInRange, [start, end, receivePort.sendPort]);
  }

  // Collect results from all isolates
  for (int i = 0; i < numIsolates; i++) {
    totalSum += await receivePort.first;
  }

  // Print the total sum
  print('Total sum is $totalSum');
  print('');
}

//!=====================================================================================================================

//! Using Isolates for I/O-bound Tasks
// In this example, we'll use isolates to handle I/O-bound tasks, such as reading a large file in chunks.
// The main isolate will delegate the reading task to another isolate.

// Function to read a file chunk by chunk in an isolate
void readFileInChunks(List<dynamic> args) async {
  String filePath = args[0];
  int chunkSize = args[1];
  SendPort sendPort = args[2];

  File file = File(filePath);
  int fileLength = await file.length();
  int offset = 0;

  while (offset < fileLength) {
    int end =
        (offset + chunkSize < fileLength) ? offset + chunkSize : fileLength;
    List<int> chunk = await file.readAsBytesSync().sublist(offset, end);

    // Simulate processing the chunk (e.g., parsing, analyzing)
    // Here we just calculate the sum of byte values for simplicity
    int chunkSum = chunk.fold(0, (sum, byte) => sum + byte);

    // Send the result back to the main isolate
    sendPort.send(chunkSum);

    offset += chunkSize;
  }

  // Indicate completion
  sendPort.send('done');
}

void main() async {
  print('Example 5: Using Isolates for I/O-bound Tasks');

  String filePath = 'large_file.txt'; // Replace with your large file path
  int chunkSize = 1024 * 1024; // 1 MB chunks
  int totalSum = 0;

  // Create a ReceivePort to get results from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate for reading the file in chunks
  await Isolate.spawn(
      readFileInChunks, [filePath, chunkSize, receivePort.sendPort]);

  // Listen for results from the isolate
  await for (var message in receivePort) {
    if (message == 'done') {
      break;
    }
    totalSum += message as int;
  }

  // Print the total sum of bytes (or other processed result)
  print('Total byte sum is $totalSum');
  print('');
}

//!=====================================================================================================================

//! Using Isolate to Perform Asynchronous Tasks with Delays
// This example demonstrates using an isolate to perform asynchronous tasks that include delays,
// such as simulating time-consuming operations like data fetching.

// Function to simulate a delayed task in an isolate
void delayedTask(SendPort sendPort) async {
  // Simulate a task that takes some time
  await Future.delayed(Duration(seconds: 3));

  // Send the result back to the main isolate
  sendPort.send('Task completed after 3 seconds');
}

void main() async {
  print('Example 6: Using Isolate to Perform Asynchronous Tasks with Delays');

  // Create a ReceivePort to get the result from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate to perform a delayed task
  await Isolate.spawn(delayedTask, receivePort.sendPort);

  // Wait for the result from the isolate
  String result = await receivePort.first;

  // Print the result
  print(result); // Task completed after 3 seconds
  print('');
}

//!=====================================================================================================================

//! Isolates for Background Data Processing
// This example shows how you can use isolates to process data in the background, such as processing
// large JSON data without blocking the main isolate.
// Simulate a function that processes JSON data in an isolate
void processJsonData(SendPort sendPort) {
  String jsonData = '''
  [
    {"name": "Alice", "age": 30},
    {"name": "Bob", "age": 25},
    {"name": "Charlie", "age": 35}
  ]
  ''';

  // Decode JSON data
  List<dynamic> data = jsonDecode(jsonData);

  // Process data (e.g., filter, aggregate)
  List<dynamic> filteredData = data.where((item) => item['age'] > 28).toList();

  // Send the result back to the main isolate
  sendPort.send(filteredData);
}

void main() async {
  print('Example 7: Isolates for Background Data Processing');

  // Create a ReceivePort to get the result from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate to process JSON data
  await Isolate.spawn(processJsonData, receivePort.sendPort);

  // Wait for the processed data from the isolate
  List<dynamic> result = await receivePort.first;

  // Print the processed data
  print(
      'Filtered Data: $result'); // Should print filtered list with Alice and Charlie
  print('');
}

//!=====================================================================================================================

//! Communication Between Multiple Isolates
// This example demonstrates how multiple isolates can communicate with each other.
// We will create two worker isolates that communicate through the main isolate.

// Worker 1: Performs a task and sends a message to Worker 2 via the main isolate
void worker1(SendPort mainSendPort) {
  // Perform a task
  int result = 42;

  // Send the result to the main isolate, instructing it to forward it to Worker 2
  mainSendPort.send(['worker2', result]);
}

// Worker 2: Receives a message from Worker 1 via the main isolate and processes it
void worker2(SendPort mainSendPort) {
  // Receive a message from the main isolate
  ReceivePort worker2ReceivePort = ReceivePort();
  mainSendPort.send(worker2ReceivePort.sendPort);

  worker2ReceivePort.listen((message) {
    int data = message as int;
    print('Worker 2 received data: $data');
  });
}

void main() async {
  print('Example 8: Communication Between Multiple Isolates');

  // Create a ReceivePort for the main isolate
  ReceivePort mainReceivePort = ReceivePort();

  // Spawn Worker 2 first and get its SendPort
  await Isolate.spawn(worker2, mainReceivePort.sendPort);
  SendPort worker2SendPort = await mainReceivePort.first;

  // Spawn Worker 1
  await Isolate.spawn(worker1, mainReceivePort.sendPort);

  // Listen for messages in the main isolate
  await for (var message in mainReceivePort) {
    if (message is List && message[0] == 'worker2') {
      // Forward the message from Worker 1 to Worker 2
      worker2SendPort.send(message[1]);
      break;
    }
  }

  print('Communication between Worker 1 and Worker 2 completed');
  print('');
}
//!=====================================================================================================================