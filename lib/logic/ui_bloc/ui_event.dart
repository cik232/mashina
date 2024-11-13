import '../../data/content_type/content_type.dart';

abstract class UIEvent {}

class LoadItems extends UIEvent {}

class DetectPlatformEvent extends UIEvent {}

class SelectContentEvent extends UIEvent {
  final ContentType contentType;
  SelectContentEvent(this.contentType);
}

class GoBackToItems extends UIEvent {}

class SelectCarEvent extends UIEvent {
  final int carIndex;
  SelectCarEvent(this.carIndex);
}
