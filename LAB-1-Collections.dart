// Exercise 1 - Highest Number 
int highest(List<int> numbers) {

  int highestNumber = numbers[0];
  
  for (int number in numbers) {
    if (number > highestNumber) {
      highestNumber = number;
    }
  }

  return highestNumber;
}


// Exercise 2 - Key and Values
void printMapKeysAndValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}


// Exercise 3 - Removing Duplicates

List<T> removeDuplicates<T>(List<T> list) {
  Set<T> uniqueList = {};
  
  for (T item in list) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }
  
  return uniqueList.toList();
}