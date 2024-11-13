import 'package:flutter/material.dart';

class Categore extends StatelessWidget {
  const Categore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Rasmlar uchun kenglik proporsiyasi
    double imageWidthFactor = screenWidth * 0.1; // Chiziqning kengligi va balandligini proporsional qilish
    double dividerWidth = screenWidth * 0.004;
    double dividerHeight = screenHeight * 0.2; // Balandlikni ekran foiziga bog'lash

    return Container(
      height: 120,
      width: screenWidth,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCategoryItem('assets/app_icon/jarima_m.png', 'Jarimalar\n',
                imageWidthFactor),
            _buildDivider(dividerWidth, dividerHeight),
            _buildCategoryItem('assets/app_icon/shina_m.png',
                'Avtomobil\nbo’limi', imageWidthFactor),
            _buildDivider(dividerWidth, dividerHeight),
            _buildCategoryItem('assets/app_icon/book_m.png', 'Yo’l\nkitobchasi',
                imageWidthFactor),
            _buildDivider(dividerWidth, dividerHeight),
            _buildCategoryItem('assets/app_icon/lokation_m.png', 'Yo’l\nkitobchasi',
                imageWidthFactor),
          ],
        ),
      ),
    );
    ;
  }

  Widget _buildCategoryItem(String imagePath, String title, double imageWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          height: 80,
          fit: BoxFit.cover,
          imagePath,
          width: 80,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Color(0xFF274D68),),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildDivider(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color(0xFF274D68),
            Color(0xFF274D68).withOpacity(0.9),
          ],
        ),
      ),
    );
  }
}
