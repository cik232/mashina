import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSupportScreen extends StatelessWidget {
  const SettingSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top Icon
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/app_icon/call_centr.png'), // Replace with your image asset
              ),
              const SizedBox(height: 10),
              Text(
                "Murojat qilish",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 20),

              // "Operator bilan chat" Button
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
                    // Handle chat with operator action
                  },
                  child:const Padding(
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
              const SizedBox(height: 10),

              // "Kontaktlar" Button
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
            ],
          ),
        ),
      ),
    );
  }
}


