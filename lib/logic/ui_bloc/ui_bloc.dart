import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/content_type/content_type.dart';
import '../../data/models/item_model/item_model.dart';
import 'ui_event.dart';
import 'ui_state.dart';

class UIBloc extends Bloc<UIEvent, UIState> {
  UIBloc() : super(UIInitial()) {
    on<DetectPlatformEvent>((event, emit) {
      String platform = '';

      if (kIsWeb) {
        platform = 'web';
      } else if (Platform.isIOS || Platform.isAndroid) {
        platform = 'mobile';
      } else {
        platform = 'desktop';
      }

      emit(PlatformDetectedState(platform));
    });

    on<LoadItems>((event, emit) {
      // Loading items and setting the initial content to TimeProgrest
      emit(UILoaded(
        items: [
          ItemModel(
            title: "Texnik ko'rik",
            subtitle: "Muddat tugadi!",
            progress: 1.0,
            isExpired: true,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Sug'urta",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Haydovchilik\nguvohnomasi",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Tonirovka",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Avtomobil\nmoyi",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Gaz",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
          ItemModel(
            title: "Ishonchnoma",
            subtitle: "4 oy, 21 kun qoldi.",
            progress: 0.50,
            isExpired: false,
            startDate: DateTime(2024, 10, 6),
            endDate: DateTime(2025, 2, 6),
          ),
        ],
        selectedContent: ContentType.home,
        showItems: true, // Initially show the grid view (TimeProgrest)
      ));
    });

    on<SelectContentEvent>((event, emit) {
      // Update to show the selected content type page
      final currentState = state as UILoaded;
      emit(currentState.copyWith(
        selectedContent: event.contentType,
        showItems: false, // Switch to show selected content page
      ));
    });

    on<GoBackToItems>((event, emit) {
      // Go back to showing TimeProgrest
      final currentState = state as UILoaded;
      emit(currentState.copyWith(showItems: true));
    });

    on<SelectCarEvent>((event, emit) {
      final currentState = state as UILoaded;
      emit(currentState.copyWith(currentCarIndex: event.carIndex));
    });


  }
}
