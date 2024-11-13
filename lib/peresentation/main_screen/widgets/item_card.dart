import 'package:flutter/material.dart';
import '../../../data/models/item_model/item_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth;
        // Progress indikator radiusi, maksimal qiymati 50 ga cheklangan
        double indicatorRadius = (cardWidth * 0.20).clamp(0, 60.0);

        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Progress indikator
                    CircularPercentIndicator(
                      radius: indicatorRadius,
                      lineWidth: indicatorRadius * 0.3,
                      percent: item.progress,
                      center: Text(
                        "${(item.progress * 100).toInt()}%",
                        style: TextStyle(fontSize: indicatorRadius * 0.4),
                      ),
                      progressColor: item.isExpired ? Colors.red : const Color(0xFF274D68),
                      backgroundColor: Colors.grey.shade300,
                    ),
                    const SizedBox(width: 40),
                    // Matn qismi
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            maxLines: 2, // Maksimal 2 qator bilan cheklash
                            overflow: TextOverflow.ellipsis, // Sig'magan qismini "..." bilan ko'rsatish
                            style: TextStyle(
                              fontSize: cardWidth * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: item.isExpired ? Colors.red : const Color(0xFF274D68),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              item.subtitle,
                              maxLines: 2, // Maksimal 2 qator bilan cheklash
                              overflow: TextOverflow.ellipsis, // Sig'magan qismini "..." bilan ko'rsatish
                              style: TextStyle(
                                fontSize: cardWidth * 0.04,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "06.10.2024 - 06.02.2025",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: cardWidth * 0.035,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
