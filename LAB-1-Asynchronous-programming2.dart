import 'dart:async';

// Exercise 1 - Future.then
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data fetched successfully!';
  });
}

void main() {
  print('Processing data...');
  
  fetchData().then((String data) {
    print('Received: $data');
    print('Main function continues execution...');
  });
}
