import 'package:flutter/material.dart';

class SettingsSecurityScreen extends StatefulWidget {
   const SettingsSecurityScreen({super.key});

  @override
  State<SettingsSecurityScreen> createState() => _SettingsSecurityScreenState();
}

class _SettingsSecurityScreenState extends State<SettingsSecurityScreen> {
   bool lightOne = true;

  final WidgetStateProperty<Icon?> thumbIcon =
  WidgetStateProperty.resolveWith<Icon?>(
        (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.fingerprint_outlined,color: Colors.white,);
      }
      return const Icon(Icons. circle_outlined);
    },
  );

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
                        child:Icon(
                          Icons.verified_user,
                          size: widgetSize(context, 0.4),
                          color: Color(0xFF274D68),
                        ),
                      ),

                      SizedBox(height:20,),
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
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(Icons.fingerprint_outlined, color: Colors.white),
                                        SizedBox(width: 10),
                                        Text(
                                          "Kontaktlar",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      thumbIcon: thumbIcon,
                                      value: lightOne,
                                      onChanged: (bool value) {
                                        setState(() {
                                          lightOne = value;
                                        });
                                      },
                                      activeColor: const Color(0xFF274D68), // Thumb (dumaloq) tugmasining rangi
                                      activeTrackColor: Colors.grey[400], // Track (yo'l)ning rangi
                                      inactiveThumbColor: Colors.grey, // Thumb tugmasining rangi
                                      inactiveTrackColor: Colors.grey[400], // Track yo'lning rangi

                                    ),
                                  ],
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
