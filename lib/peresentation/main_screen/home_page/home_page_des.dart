import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashina_test/logic/ui_bloc/ui_bloc.dart';

import 'content_area.dart';
import 'sidebar.dart';

class HomePageDes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UIBloc(),
      child: Scaffold(
        body: Row(
          children: [
            Sidebar(),

            Expanded(
              child: ContentArea(),
            ),
          ],
        ),
      ),
    );
  }
}
