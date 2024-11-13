import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';
import '../../../logic/ui_bloc/ui_state.dart';
import '../widgets/setting_support_screen.dart';
import '../widgets/setting_user_screen.dart';
import '../widgets/settings_language_screen.dart';
import '../widgets/settings_security_screen.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UIBloc, UIState>(
      builder: (context, state) {
        if (state is UILoaded) {
          return LayoutBuilder(
            builder: (context, constraints) {
              double containerWidth = constraints.maxWidth;

              // Determine `crossAxisCount` based on width
              int crossAxisCount;
              double childAspectRatio;
              if (containerWidth > 1200) {
                crossAxisCount = 4;
                childAspectRatio = 1.1;
              } else if (containerWidth > 800) {
                crossAxisCount = 3;
                childAspectRatio = 1;
              } else if (containerWidth > 600) {
                crossAxisCount = 2;
                childAspectRatio = 1.4;
              } else {
                crossAxisCount = 1;
                childAspectRatio = 1.1;
              }

              // List of setting screens to display
              final items = [
                const SettingUserScreen(),
                const SettingsLanguageScreen(),
                const SettingSupportScreen(),
                const SettingsSecurityScreen(),
              ];

              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 16,
                  childAspectRatio: childAspectRatio,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: item, // Display each setting screen widget
                      ),
                    ),
                  );
                },
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
