fun findMax(numbers: List<Int>): Int? {
  if (numbers.size == 0) {
    return null
  }
  var maxi = numbers[0]
  var index = 1
  while (index < numbers.size) {
    if (numbers[index] > maxi) {
      maxi = numbers[index]
    }
    index++
  }
  return maxi
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
  var evens = mutableListOf<Int>()
  for (num in numbers) {
    if (num % 2 == 0) {
      evens.add(num)
    }
  }
  return evens
}

fun calculateAverage(numbers: List<Double>): Double? {
  if (numbers.size == 0) {
    return null
  }
  var sum:Double = 0.0
  for (num in numbers) {
    sum = sum + num
  }
  return sum/(numbers.size)
  
}

