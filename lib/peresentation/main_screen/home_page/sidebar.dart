import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/carslider.dart';
import '../widgets/categore.dart';

import '../../../data/content_type/content_type.dart';
import '../../../data/models/car_model/car_model.dart';
import '../../../logic/ui_bloc/ui_bloc.dart';
import '../../../logic/ui_bloc/ui_event.dart';
import '../widgets/build_car_license_section.dart';
import '../widgets/car_number.dart';
import '../widgets/cervike.dart';
import '../widgets/user_info_item.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> userInfoData = [
      {"title": "Tug'ilgan sana:", "value": "02.09.2003"},
      {"title": "JShShIR:", "value": "928741927431"},
      {"title": "Berilgan sanasi:", "value": "02.09.2021"},
      {"title": "Muddati tugash sanasi:", "value": "02.09.2031"},
      {
        "title": "Kim \ntomonidan \nberilgan:",
        "value": "АСАКИНСКИЙ \nГОМ АСАКИНСКОГО \nРОВД АНДИЖАНСКОЙ ОБЛАСТИ"
      },
      {"title": "Passport seriya va raqami:", "value": "AA12345"},
      {"title": "Mamlakat:", "value": "O'zbekiston Respublikasi"},
      {"title": "Hudud:", "value": "Sirdaryo Viloyati"},
      {"title": "Tuman:", "value": "Mirzaobod tumanii"},
      {"title": "Kadastr raqami:", "value": "12:03:04:02:04:0219"},
      {"title": "Manzil:", "value": "BIRLASGAN KFJ, M.LUG'BEK MFY, улица РС"},
      {"title": "Berilgan sana:", "value": "03.10.2021"},
      {"title": "Amal qilish muddati:", "value": "03.10.2031"},
      {"title": "Berilgan joyi:", "value": "Mirzaobod tumani"},
      {"title": "Guvohnoma raqami:", "value": "AG0187865"},
    ];

    return Container(
      width: 400,
      color: Colors.grey[200],
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                color: const Color(0xFF274D68),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                              'assets/user_info/user_imag.jpeg'), // Rasim joylash
                        ),
                        Positioned(
                          top: 8,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Alijonov A`zamjon\nOzodbek o`gli',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Chevrolet',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    color: Color(0xFF5A5A5A),),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Cobalt',
                  style: TextStyle(fontSize: 16, color: Color(0xFF5A5A5A),),
                ),
              ),
              const CarSlider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CarNumber(car: CarModel.car[0]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Categore(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Cervike(),
                  ),
                ],
              ),
              Column(
                children: userInfoData
                    .map((data) => UserInfoItem(
                          title: data['title']!,
                          value: data['value']!,
                        ))
                    .toList(),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 10, top: 15),
              //   child: Text(
              //     "Avtomobil toifasi",
              //     style: TextStyle(fontSize: 12, color: Colors.black45),
              //   ),
              // ),
              ListTile(
                title: const Text(
                  "Avtomobil toifasi",
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
                onTap: () {
                  // Bosilganda `SelectContentEvent` yuboriladi
                  BlocProvider.of<UIBloc>(context).add(
                    SelectContentEvent(ContentType.drivers_license_screen),
                  );
                },
              ),
              const BuildCarLicenseSection()
            ],
          );
        },
      ),
    );
  }
}

// ListTile(
// leading: Icon(Icons.car_rental),
// title: Text("Texnik ko'rik"),
// onTap: () {
// BlocProvider.of<ContentBloc>(context)
//     .add(SelectContentEvent(ContentType.technicalInspection));
// },
// ),
// ListTile(
// leading: Icon(Icons.shield),
// title: Text("Sug'urta"),
// onTap: () {
// BlocProvider.of<ContentBloc>(context)
//     .add(SelectContentEvent(ContentType.insurance));
// },
// ),
// ListTile(
// leading: Icon(Icons.person),
// title: Text("Haydovchilik guvohnomasi"),
// onTap: () {
// BlocProvider.of<ContentBloc>(context)
//     .add(SelectContentEvent(ContentType.driverLicense));
// },
// ),
// ListTile(
// leading: Icon(Icons.window),
// title: Text("Tonirovka"),
// onTap: () {
// BlocProvider.of<ContentBloc>(context)
//     .add(SelectContentEvent(ContentType.tinting));
// },
// ),
// // Qo'shimcha tugmalarni o'zingiz qo'shishingiz mumkin
