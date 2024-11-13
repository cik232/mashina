import 'package:flutter/material.dart';

class CarSlider extends StatefulWidget {
  const CarSlider({super.key});

  @override
  _CarSliderState createState() => _CarSliderState();
}

class _CarSliderState extends State<CarSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> carImages = [
    'assets/car_images/car.png',
    'assets/car_images/car.png',
    'assets/car_images/car.png',
    'assets/car_images/car.png',

  ];

  void _nextPage() {
    if (_currentPage < carImages.length) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToAddCar() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GarageScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: carImages.length + 1,
                    itemBuilder: (context, index) {
                      if (index == carImages.length) {
                        return Center(
                          child: GestureDetector(
                            onTap: _goToAddCar,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Color(0xFF274D68),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.8,
                            height: MediaQuery.of(context).size.height *
                                0.4,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  // Markazlash uchun Align
                                  child: Image.asset(
                                    carImages[index], // Rasm
                                    width: 250,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Positioned(
                  left: 15,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 40,
                    color: Colors.black,
                    onPressed: _previousPage,
                  ),
                ),
                Positioned(
                  right: 8,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    iconSize: 40,
                    color: Colors.black,
                    onPressed: _nextPage,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(carImages.length + 1, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                width: _currentPage == index ? 12.0 : 8.0,
                height: _currentPage == index ? 12.0 : 8.0,
                decoration: BoxDecoration(
                  color:
                      _currentPage == index ? const Color(0xFF274D68) : Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class CylinderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint rectPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.yellow, Colors.white],
      ).createShader(
        Rect.fromLTWH(0, size.height / 2.5, size.width, size.height / -4),
      );

    Rect rect =
        Rect.fromLTWH(0, size.height / 2.5, size.width, size.height / -4);
    canvas.drawRect(rect, rectPaint);

    Paint ovalPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.yellow, Colors.white],
      ).createShader(
        Rect.fromCircle(center: Offset(size.width / 2, 100), radius: 100),
      );

    Rect ovalRect = Rect.fromLTWH(0, 0, size.width, size.height / 3.5);
    canvas.drawOval(ovalRect, ovalPaint);

    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.2)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10.0);
    canvas.drawRect(rect.shift(const Offset(0, 10)), shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class GarageScreen extends StatelessWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Car'),
        backgroundColor: Colors.yellow[700],
      ),
      body: const Center(
        child: Text('Here you can add a new car!'),
      ),
    );
  }
}
