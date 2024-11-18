import 'package:flutter/material.dart';
import 'package:mashina_test/data/models/car_model/car_model.dart';
import 'package:mashina_test/peresentation/main_screen/widgets/time_progrest.dart';

import '../../../../theme/app_theme.dart';
import '../../../widgets/car_number.dart';
import '../../../widgets/carslider.dart';
import '../../../widgets/categore.dart';
import '../../../widgets/cervike.dart';

class BtnbarHome extends StatefulWidget {
  final CarModel car;

  const BtnbarHome({super.key, required this.car});

  @override
  State<BtnbarHome> createState() => _BtnbarHomeState();
}

class _BtnbarHomeState extends State<BtnbarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 30, top: 0, right: 0, bottom: 0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.car.marcs,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  widget.car.name,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.notifications,
                  color: AppTheme.darkSecondary,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.topRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CarNumber(car: CarModel.car[0]),
                  ),
                ),
                const CarSlider(),
                const SizedBox(
                  height: 20,
                ),
                const Categore(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Cervike(),
                ),
                TimeProgrest()
              ],
            ),
          );
        },
      ),
    );
  }
}
