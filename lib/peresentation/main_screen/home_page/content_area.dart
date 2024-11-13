import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/content_type/content_type.dart';
import 'package:mashina_test/logic/ui_bloc/ui_bloc.dart';
import 'package:mashina_test/logic/ui_bloc/ui_state.dart';
import 'package:mashina_test/logic/ui_bloc/ui_event.dart';

import '../app_settings/app_settings.dart';
import '../widgets/time_progrest.dart';

class ContentArea extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    context.read<UIBloc>().add(LoadItems());

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Muddatlar')),
        leading: BlocBuilder<UIBloc, UIState>(
          builder: (context, state) {
            if (state is UILoaded && !state.showItems) {
              return IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  context.read<UIBloc>().add(GoBackToItems());
                },
              );
            }
            return SizedBox.shrink();
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
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
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {
                print("Notification pressed");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
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
              icon: Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                context.read<UIBloc>().add(SelectContentEvent(ContentType.settings));
              },
            ),
          ),
          SizedBox(width: 30),
        ],
      ),
      body: BlocBuilder<UIBloc, UIState>(
        builder: (context, state) {
          if (state is UILoaded) {
            if (state.showItems) {
              return TimeProgrest();
            } else {
              switch (state.selectedContent) {
                case ContentType.technicalInspection:
                  return TechnicalInspectionPage();
                case ContentType.settings:
                  return AppSettings();
                case ContentType.insurance:
                  return InsurancePage();
                case ContentType.driverLicense:
                  return DriverLicensePage();
                case ContentType.tinting:
                  return TintingPage();
                default:
                  return HomePageContent();
              }
            }
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class TintingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class DriverLicensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class InsurancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class TechnicalInspectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

