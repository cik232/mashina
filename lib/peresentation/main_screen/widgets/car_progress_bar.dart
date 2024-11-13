import 'package:flutter/material.dart';
import 'dart:async';

class CarProgressBar extends StatefulWidget {
  const CarProgressBar({super.key});

  @override
  _CarProgressBarState createState() => _CarProgressBarState();
}

class _CarProgressBarState extends State<CarProgressBar> {
  double _progress = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    const oneSec = Duration(milliseconds: 500);
    int totalTime = 100;

    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (_progress >= 1.0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _progress += 1 / totalTime;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Center(
          child: Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // Taglik shakl (assetdan)
                Positioned(
                  top: 30,
                  child: Image.asset(
                    'assets/app_icon/yol_shakli.png',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  left: _progress * 230,
                  top: 8,
                  child: Image.asset(
                    'assets/app_icon/car.png',
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
