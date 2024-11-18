import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mashina_test/peresentation/main_screen/app_settings/app_settings.dart';
import 'package:mashina_test/peresentation/main_screen/home_page/home_phone/phone_btnbar_screen/btnbar_info.dart';
import 'package:mashina_test/peresentation/main_screen/home_page/home_phone/phone_btnbar_screen/btnbar_settings.dart';

import '../../../../../data/models/car_model/car_model.dart';
import '../../../../theme/app_theme.dart';
import '../phone_btnbar_screen/btnbar_home.dart';


class ButtonBarUi extends StatefulWidget {
  const ButtonBarUi({Key? key}) : super(key: key);

  @override
  State<ButtonBarUi> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ButtonBarUi> {
  final _pageController = PageController(initialPage: 0);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      BtnbarHome(car: CarModel.car[0],),
      BtnbarInfo(),
      BtnbarSettings(),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: AppTheme.lightSecondary,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: AppTheme.lightSecondary,

              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 400,

              itemLabelStyle:
                  const TextStyle(fontSize: 10, color: Colors.white),

              elevation: 1,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/asosi.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/asosi.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Asosiy',
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/hujatlar.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/hujatlar.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Hujjatlarim',
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/sozlamalar.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/sozlamalar.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Sozlamalar',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}
