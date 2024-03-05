void throwException() {
  throw Exception('This is an exception!');
}

class CustomException implements Exception {
  final String message;
  
  CustomException(this.message);
}

void main() {
  // Exercise 1 - Handling any exception
  
  try {
    throwException();
  } catch (e) {
    print('Caught an exception: $e');
  }

  
  // Exercise 2 - Handling specific type of exception
  try {
    throw CustomException('This is a custom exception!');
  } on CustomException catch (e) {
    print('Caught a custom exception: ${e.message}');
  } catch (e) {
    print('Caught an unexpected exception: $e');
  }

  // Exercise 3 - Finally block
  try {
    throwException();
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('Finally block executed.');
  }
}
