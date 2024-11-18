import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashina_test/peresentation/main_screen/home_page/home_phone/button_bar/button_bar_ui.dart';
import 'logic/ui_bloc/ui_bloc.dart';
import 'logic/ui_bloc/ui_event.dart';
import 'logic/ui_bloc/ui_state.dart';
import 'peresentation/main_screen/home_page/home_page_des.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // UIBloc-ni yaratamiz va platformani aniqlash uchun event yuboramiz
  final uiBloc = UIBloc();
  uiBloc.add(DetectPlatformEvent());

  // Platformani aniqlaganimizdan keyin faqat desktop uchun `window_manager`ni ishga tushiramiz
  final platformState =
      await uiBloc.stream.firstWhere((state) => state is PlatformDetectedState)
          as PlatformDetectedState;

  if (!kIsWeb && platformState.platform == 'desktop') {
    await windowManager.ensureInitialized();
    windowManager.setMinimumSize(const Size(800, 600));
  }

  runApp(MyApp(uiBloc: uiBloc));
}

class MyApp extends StatelessWidget {
  final UIBloc uiBloc;

  const MyApp({Key? key, required this.uiBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: uiBloc,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<UIBloc, UIState>(
          builder: (context, state) {
            if (state is PlatformDetectedState) {
              if (state.platform == 'mobile') {
                return ButtonBarUi();
              } else {
                return HomePageDes();
              }
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
