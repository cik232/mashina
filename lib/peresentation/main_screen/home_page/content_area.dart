import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/content_type/content_type.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';
import '../../../logic/ui_bloc/ui_state.dart';
import '../../../logic/ui_bloc/ui_event.dart';

import '../app_settings/app_settings.dart';
import '../widgets/time_progrest.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({super.key});




  @override
  Widget build(BuildContext context) {
    context.read<UIBloc>().add(LoadItems());

    return Scaffold(
      appBar: AppBar(
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
          Container(
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
              icon: const Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {
              },
            ),
          ),
          Container(
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
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                context.read<UIBloc>().add(SelectContentEvent(ContentType.settings));
              },
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: BlocBuilder<UIBloc, UIState>(
        builder: (context, state) {
          if (state is UILoaded) {
            if (state.showItems) {
              return const TimeProgrest();
            } else {
              switch (state.selectedContent) {
                case ContentType.technicalInspection:
                  return const TechnicalInspectionPage();
                case ContentType.settings:
                  return const AppSettings();
                case ContentType.insurance:
                  return const InsurancePage();
                case ContentType.driverLicense:
                  return const DriverLicensePage();
                case ContentType.tinting:
                  return const TintingPage();
                default:
                  return const HomePageContent();
              }
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: const Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class TintingPage extends StatelessWidget {
  const TintingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: const Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class DriverLicensePage extends StatelessWidget {
  const DriverLicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: const Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: const Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

class TechnicalInspectionPage extends StatelessWidget {
  const TechnicalInspectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Texnik ko'rik sahifasi"),
          ElevatedButton(
            onPressed: () {
              context.read<UIBloc>().add(GoBackToItems());
            },
            child: const Text("Ortga"),
          ),
        ],
      ),
    );
  }
}

