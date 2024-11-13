import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';
import '../../../logic/ui_bloc/ui_state.dart';
import '../../../logic/ui_bloc/ui_event.dart';
import '../../../data/content_type/content_type.dart';
import 'item_card.dart';

class TimeProgrest extends StatelessWidget {
  const TimeProgrest({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UIBloc, UIState>(
      builder: (context, state) {
        if (state is UILoaded) {
          return LayoutBuilder(
            builder: (context, constraints) {
              double containerWidth = constraints.maxWidth;

              // Kenglikka qarab `crossAxisCount`ni aniqlash
              int crossAxisCount;
              double childAspectRatio;
              if (containerWidth > 1200) {
                crossAxisCount = 4;
                childAspectRatio = 1.2; // ekran katta bo'lganda kattaroq kartalar
              } else if (containerWidth > 800) {
                crossAxisCount = 3;
                childAspectRatio = 1.3;
              } else if (containerWidth > 600) {
                crossAxisCount = 2;
                childAspectRatio = 1.4;
              } else {
                crossAxisCount = 1;
                childAspectRatio = 1.7; // kichik ekranlar uchun
              }

              return GridView.count(
                padding: EdgeInsets.all(16),
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 15,
                crossAxisSpacing: 16,
                childAspectRatio: childAspectRatio,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(state.items.length, (index) {
                  final item = state.items[index];
                  return GestureDetector(
                    onTap: () {
                      context.read<UIBloc>().add(SelectContentEvent(ContentType.values[index]));
                    },
                    child: ItemCard(item: item),
                  );
                }),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}