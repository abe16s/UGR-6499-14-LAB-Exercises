fun analyzeString(input: String): Triple<Int, Int, Int> {
  
  
  var words = input.split(" ")
  var wordCount: Int = words.size
  var uppercaseCount: Int = 0
  var vowelCount: Int = 0

  for (word in words) {
    word.forEach { char ->
        if (char.isUpperCase()) {
            uppercaseCount++
        }
        if (char.lowercaseChar() in "aeiou") {
            vowelCount++
        }
    }
  }
  
  return Triple(wordCount,uppercaseCount,vowelCount)

}

fun main() {

  print("Enter a string: ")
  val input = readLine() ?: ""

  val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)

  println("Number of words: $wordCount")
  println("Number of uppercase letters: $uppercaseCount")
  println("Number of vowels: $vowelCount")

}