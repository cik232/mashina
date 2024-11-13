import 'package:flutter/material.dart';

import '../../../data/models/car_model/car_model.dart';

class CarNumber extends StatelessWidget {
  final CarModel car;
  const CarNumber({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    // Konteyner va rasm o'lchamini statik qilib belgilash
    double containerWidth = 200.0; // Konteyner kengligi
    double imageWidth = 30.0; // Rasm kengligi

    return Container(
      width: containerWidth, // Kenglikni statik qilamiz
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  car.number_code,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "|\n|",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  car.car_number,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // Bayroq
          Padding(
            padding: const EdgeInsets.only(top: 4, right: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  car.uz_b_images,
                  width: imageWidth, // Statik o'lcham
                ),
                const Text(
                  'UZ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}