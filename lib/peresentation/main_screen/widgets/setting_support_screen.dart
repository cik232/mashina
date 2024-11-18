import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSupportScreen extends StatelessWidget {
  const SettingSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;

          double widgetSize(BuildContext context, double scale) {
            return (containerWidth + containerHeight) / 2 * scale;
          }
          return Column(
            children: [
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child:  Container(
                          width: containerWidth * 0.5,
                          height: containerHeight * 0.5,
                          child: Image.asset('assets/app_icon/call_centr.png'), // Replace with your image asset
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child:  Text(
                          "Murojat qilish",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            height: containerHeight * 0.18,
                            width: containerWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF274D68), // Background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: () {
                                // Handle chat with operator action
                              },
                              child:Center(
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8,right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(CupertinoIcons.chat_bubble_2, color: Colors.white),
                                          SizedBox(width: 10),
                                          Text(
                                            "Operator bilan chat",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            height: containerHeight * 0.18,
                            width: containerWidth,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF274D68), // Background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: () {
                                // Handle contacts action
                              },
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8,right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(height: 27,'assets/app_icon/call_icon.png'),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Kontaktlar",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      const Icon(Icons.arrow_forward_ios, color: Colors.white),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}


