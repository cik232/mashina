import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashina_test/peresentation/main_screen/app_settings/app_settings.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/technical_screen.dart';
import '../../../data/content_type/content_pages.dart';
import '../../../data/content_type/content_type.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';
import '../../../logic/ui_bloc/ui_state.dart';
import '../../../logic/ui_bloc/ui_event.dart';
import '../widgets/time_progrest.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UIBloc>().add(LoadItems());

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F3),
        title: const Center(child: Text('Muddatlar')),
        leading: BlocBuilder<UIBloc, UIState>(
          builder: (context, state) {
            if (state is UILoaded && !state.showItems) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.read<UIBloc>().add(GoBackToItems());
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
        actions: [
          _buildIconButton(Icons.notifications, onPressed: (){
            context.read<UIBloc>().add(SelectContentEvent(ContentType.notification_screen));
          }),
          _buildIconButton(Icons.settings, onPressed: () {
            context.read<UIBloc>().add(SelectContentEvent(ContentType.settings_screen));
          }),
          const SizedBox(width: 30),
        ],
      ),
      body: BlocBuilder<UIBloc, UIState>(
        builder: (context, state) {
          if (state is UILoaded) {
            if (state.showItems) {
              return const TimeProgrest();
            } else {
              // Dinamik oyna tanlash
              return contentPages[state.selectedContent] ?? const TechnicalScreen();
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {VoidCallback? onPressed}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF274D68),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.white,
        onPressed: onPressed,
      ),
    );
  }
}