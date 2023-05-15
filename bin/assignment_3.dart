class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double? milesDriven;

  Car(this.brand, this.model, this.year) {
    milesDriven = 0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven = miles;
  }

  double? getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    final currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  final car1 = Car("Toyota", "Camry", 2018);
  final car2 = Car("Honda", "Accord", 2019);
  final car3 = Car("Ford", "Mustang", 2020);

  car1.drive(5000);
  car2.drive(7000);
  car3.drive(3000);

  print("Car 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()}");

  print("Car 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()}");

  print("Car 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()}");

  print("Total number of cars created: ${Car.numberOfCars}");
}

