import 'package:mashina_test/data/models/item_model/item_model.dart';

import '../../data/content_type/content_type.dart';

abstract class UIState {}

class UIInitial extends UIState {}

class PlatformDetectedState extends UIState {
  final String platform;
  PlatformDetectedState(this.platform);
}


class UILoaded extends UIState {
  final List<ItemModel> items;
  final ContentType selectedContent;
  final bool showItems;
  final int currentCarIndex;

  UILoaded({
    required this.items,
    required this.selectedContent,
    required this.showItems,
    this.currentCarIndex = 0,
  });

  UILoaded copyWith({ContentType? selectedContent, bool? showItems, int? currentCarIndex}) {
    return UILoaded(
      items: items,
      selectedContent: selectedContent ?? this.selectedContent,
      showItems: showItems ?? this.showItems,
      currentCarIndex: currentCarIndex ?? this.currentCarIndex,
    );
  }
}
