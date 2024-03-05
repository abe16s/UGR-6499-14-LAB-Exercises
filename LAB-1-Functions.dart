double average(List<double> numbers) {
  
  double sum = 0.0;
  
  for (double number in numbers) {
    sum += number;
  }

  return sum / numbers.length;
}