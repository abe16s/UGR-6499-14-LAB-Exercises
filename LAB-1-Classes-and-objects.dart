class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void vroom() {
    print("Vroom Vroom");
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(super.brand, super.model, super.year, this.batteryLife);
}

void main() {
  Car myCar = Car('Toyota', 'Corolla', 2024);
  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);  
}
