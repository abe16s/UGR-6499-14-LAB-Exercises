import 'dart:async';

// Exercise 1 - async and await 
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data fetched successfully!';
  });
}

Future<void> processData() async {
  print('Processing data...');
  String data = await fetchData(); 
  print('Received: $data');
}

void main() {
  processData();
  print('Main function continues execution...');
}
