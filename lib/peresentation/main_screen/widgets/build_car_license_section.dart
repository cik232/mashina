import 'package:flutter/material.dart';

class BuildCarLicenseSection extends StatelessWidget {
  const BuildCarLicenseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.all(2),
      child: Column(
        children: [
          buildLicenseRow("A", "03.10.2021", "03.10.2031"),
          buildLicenseRow("B", "03.10.2021", "03.10.2031"),
          buildLicenseRow("C", "", ""),
          buildLicenseRow("D", "", ""),
          buildLicenseRow("BE", "", ""),
          buildLicenseRow("CE", "", ""),
          buildLicenseRow("DE", "", ""),
        ],
      ),
    );
  }

  Widget buildLicenseRow(String category, String startDate, String endDate) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        return Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryCard(screenWidth * 0.2, category),
                buildCategoryCard(screenWidth * 0.36, startDate),
                buildCategoryCard(screenWidth * 0.36, endDate),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildCategoryCard(double width, String text) {
    return Card(
      color: Colors.white,
      child: Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}