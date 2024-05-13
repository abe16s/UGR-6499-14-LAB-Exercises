fun applyUpperCase(strings: List<String>): List<String> {
    return strings.map { str -> str.uppercase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, value: Int): List<Int> {
    return numbers.filter { num -> num > value }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}