
class CarModel {
  String car_images;
  String marcs;
  String name;

  //mashina raqami
  String number_code;
  String car_number;
  String uz_b_images;
  String uz;

  CarModel(this.car_images,
      this.marcs,
      this.name,
      this.number_code,
      this.car_number,
      this.uz_b_images,
      this.uz);


  static List<CarModel> car = [
    CarModel(
        'assets/car_images/mashina.png',
        "Chevrolet",
        "Coblt",
        "01",
        "123 ABC",
        'assets/car_images/uzb_b.png',
        "UZ"),
    CarModel(
        'assets/car_images/mashina.png',
        "Chevrolet",
        "Coblt",
        "01",
        "123 ABC",
        'assets/car_images/uzb_b.png',
        "UZ"),
    CarModel(
        'assets/car_images/mashina.png',
        "Chevrolet",
        "Coblt",
        "01",
        "123 ABC",
        'assets/car_images/uzb_b.png',
        "UZ"),
    CarModel(
        'assets/car_images/mashina.png',
        "Chevrolet",
        "Coblt",
        "01",
        "123 ABC",
        'assets/car_images/uzb_b.png',
        "UZ"),
  ];
}
