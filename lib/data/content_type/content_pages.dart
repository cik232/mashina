import 'package:flutter/material.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/book_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/car_oil_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/car_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/drivers_license_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/fine_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/gaz_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/insurance_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/location_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/notification_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/retrofitting_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/safety_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/tanovka_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/technical_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/tow_truck_screen.dart';
import 'package:mashina_test/peresentation/main_screen/service_screen/trust_screen.dart';
import '../../../data/content_type/content_type.dart';
import '../../peresentation/main_screen/app_settings/app_settings.dart';

final Map<ContentType, Widget> contentPages = {
  // ContentType.technical_screen: const TechnicalScreen(),
  ContentType.insurance_screen: const InsuranceScreen(),
  ContentType.drivers_license_screen: const DriversLicenseScreen(),
  ContentType.tanovka_screen: const TanovkaScreen(),
  ContentType.car_oil_screen: const CarOilScreen(),
  ContentType.gaz_screen: const GazScreen(),
  ContentType.trust_screen: const TrustScreen(),

  ContentType.fine_screen: const FineScreen(),
  ContentType.car_screen: const CarScreen(),
  ContentType.book_screen: const BookScreen(),
  ContentType.location_screen: const LocationScreen(),

  ContentType.settings_screen: const AppSettings(),
  ContentType.notification_screen: const NotificationScreen(),

  ContentType.tow_truck_screen: const TowTruckScreen(),
  ContentType.safety_screen: const SafetyScreen(),
  ContentType.retrofitting_screen: const RetrofittingScreen(),


};