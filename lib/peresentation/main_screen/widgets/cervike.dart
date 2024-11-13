import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cervike extends StatelessWidget {
  const Cervike({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Asosiy konteyner va karta o'lchamlari
    double mainContainerWidth = 400.0; // Asosiy konteyner kengligi
    double mainContainerHeight = 250.0; // Asosiy konteyner balandligi
    double cardHeight = 80.0; // Kichik kartochka balandligi
    double cardWidth = 166.0; // Kichik kartochka kengligi
    double largeCardHeight = 170.0; // Katta kartochka balandligi
    double largeCardWidth = 200.0; // Katta kartochka kengligi
    double imageSize = 40.0; // Rasm o'lchami

    return Center(
      child: Container(
        width: mainContainerWidth,
        height: mainContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: cardHeight,
                        width: cardWidth,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/app_icon/jihozlash.png',
                                height: imageSize,
                                width: imageSize,
                              ),
                              const Text(
                                'Avtomobilni qayta jihozlash',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: cardHeight,
                        width: cardWidth,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/app_icon/tarix_tek.png',
                                height: imageSize,
                                width: imageSize,
                              ),
                              const Text(
                                'Xavfsizlik',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Uchinchisi katta kartochka
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    height: largeCardHeight,
                    width: largeCardWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/app_icon/evakuvator.png',
                            width: imageSize + 80, // Rasm kengligini oshirish
                          ),
                          const Text(
                            'Evakuatorni chaqirish',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}