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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding:const EdgeInsets.all(20),
        // margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
               Icons.verified_user,
               size: 100,
               color: Color(0xFF274D68),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
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
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
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

            // Icon(
            //   Icons.verified_user,
            //   size: 50,
            //   color: Colors.blueGrey[700],
            // ),
            // SizedBox(height: 20),
            // ListTile(
            //   leading: Icon(Icons.lock, color: Colors.white),
            //   title: Text(
            //     "PIN Code ni almashtirish",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   trailing: Icon(Icons.chevron_right, color: Colors.white),
            //   tileColor: Colors.blueGrey[700],
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            // ),
            // SizedBox(height: 10),
            // ListTile(
            //   leading: Icon(Icons.fingerprint, color: Colors.white),
            //   title: Text(
            //     "Touch ID o'rnatish",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   trailing: Switch(
            //     value: false,
            //     onChanged: (value) {},
            //     activeColor: Colors.white,
            //     activeTrackColor: Colors.blueGrey[300],
            //     inactiveThumbColor: Colors.white,
            //     inactiveTrackColor: Colors.grey,
            //   ),
            //   tileColor: Colors.blueGrey[700],
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
