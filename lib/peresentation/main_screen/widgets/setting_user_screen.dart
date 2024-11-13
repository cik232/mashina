import 'package:flutter/material.dart';

class SettingUserScreen extends StatefulWidget {
  const SettingUserScreen({super.key});

  @override
  State<SettingUserScreen> createState() => _SettingUserScreenState();
}

class _SettingUserScreenState extends State<SettingUserScreen> {
  bool lightOne = true;
  bool lightTwo = true;

  final WidgetStateProperty<Icon?> thumbIcon =
  WidgetStateProperty.resolveWith<Icon?>(
        (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.check,color: Colors.white,);
      }
      return const Icon(Icons.close);
    },
  );
  final WidgetStateProperty<Icon?> thumbIconOne =
  WidgetStateProperty.resolveWith<Icon?>(
        (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.dark_mode_outlined,color: Colors.white,);
      }
      return const Icon(Icons.light_mode_outlined);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Card
            Flexible(
              child: Container(
                padding:const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/user_info/user_imag.jpeg'),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Nickname",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 18,
                              ),
                            ],
                          ),
                          Text(
                            "+998 90 123 45 67",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        // Edit action
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Notification and Theme Cards
            Row(
              children: [
                // Notification Card
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.notifications, color: Color(0xFF274D68), size: 30),
                        const SizedBox(height: 10),
                        const Text(
                          "Bildirishnoma",
                          style: TextStyle(fontSize: 16),
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
                const SizedBox(width: 16),

                // Theme Card
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.brightness_3, color: Color(0xFF274D68), size: 30),
                        const SizedBox(height: 10),
                        const Text(
                          "Mavzu",
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          thumbIcon: thumbIconOne,
                          value: lightTwo,
                          onChanged: (bool value) {
                            setState(() {
                              lightTwo = value;
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}