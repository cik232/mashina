import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top Icon
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/app_icon/call_centr.png'), // Replace with your image asset
              ),
              SizedBox(height: 10),
              Text(
                "Murojat qilish",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 20),

              // "Operator bilan chat" Button
              Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF274D68), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Handle chat with operator action
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
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
              SizedBox(height: 10),

              // "Kontaktlar" Button
              Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF274D68), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
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
                            SizedBox(width: 10),
                            Text(
                              "Kontaktlar",
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
            ],
          ),
        ),
      ),
    );
  }
}


