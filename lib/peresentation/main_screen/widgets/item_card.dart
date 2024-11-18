import 'package:flutter/material.dart';
import '../../../data/models/item_model/item_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;
          double indicatorRadius = (containerWidth * 0.20).clamp(0, 60.0);
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: CircularPercentIndicator(
                                radius: indicatorRadius,
                                lineWidth: indicatorRadius * 0.3,
                                percent: item.progress,
                                center: Text(
                                  "${(item.progress * 100).toInt()}%",
                                  style: TextStyle(
                                      fontSize: indicatorRadius * 0.4),
                                ),
                                progressColor: item.isExpired
                                    ? Colors.red
                                    : const Color(0xFF274D68),
                                backgroundColor: Colors.grey.shade300,
                              ),
                            ),
                            const SizedBox(width: 20),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title,
                                    maxLines: 2,
                                    // Maksimal 2 qator bilan cheklash
                                    overflow: TextOverflow.ellipsis,
                                    // Sig'magan qismini "..." bilan ko'rsatish
                                    style: TextStyle(
                                      fontSize: widgetSize(context, 0.05),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                      color: item.isExpired
                                          ? Colors.red
                                          : const Color(0xFF274D68),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      item.subtitle,
                                      maxLines: 2,
                                      // Maksimal 2 qator bilan cheklash
                                      overflow: TextOverflow.ellipsis,
                                      // Sig'magan qismini "..." bilan ko'rsatish
                                      style: TextStyle(
                                        fontSize: widgetSize(context, 0.05),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "06.10.2024 - 06.02.2025",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
