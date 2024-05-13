fun main() {
  var original_price = 88.0
  var discount = 0.33
  val threshold = 0.5
  if (discount > threshold) {
    println("This discount is too high and should be less than 50%")
  } else {
    var final_price = original_price * discount 
    println("Original price: $original_price")
    println("Discount Percentage: $discount")
    println("Final price:  $final_price")
  }
}