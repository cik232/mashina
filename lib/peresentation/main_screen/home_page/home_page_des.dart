import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';

import 'content_area.dart';
import 'sidebar.dart';

class HomePageDes extends StatelessWidget {
  const HomePageDes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UIBloc(),
      child: Scaffold(
        body: Row(
          children: [
            const Sidebar(),

            Expanded(
              child: ContentArea(),
            ),
          ],
        ),
      ),
    );
  }
}
