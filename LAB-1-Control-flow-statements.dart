void main() {

  print('Switch Case');
  // Exercise 1 - Switch Case
  var day = 1;

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
  }

  
  
  print('\nFor Loop');
  // Exercise 2 - For Loop
  var a = 0;
  var b = 1;
  for (int i = 0; i < 10; i++) {
    print(a);
    var c = a;
    a = b;
    b = c + b;
  }
}