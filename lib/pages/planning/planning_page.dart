import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapp/pages/composants/bottom_navbar.dart';
import 'package:medapp/pages/composants/double_button.dart';
import 'package:medapp/pages/composants/section_card.dart';

class PlanningPage extends StatelessWidget {
  const PlanningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
            "Mamadou",
        style: Theme.of(context).textTheme.headline6?.copyWith(
          fontSize: 24
        ) ,),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: SvgPicture.asset("assets/icons/notif.svg",color: Colors.black,),
            ),
          )
        ],

      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: const [
              DoubleButton(),
              SectionCard(
                name: "Medah",
                hour: "8:30 - 9:10",
                avatar: "assets/images/doctor2.jpg",
                specialite: "Gynecologue",
                date: "10-06-2022",
              ),
              SizedBox(height: 10,),
              SectionCard(
                name: "Medah",
                hour: "8:30 - 9:10",
                avatar: "assets/images/doctor2.jpg",
                specialite: "Gynecologue",
                date: "10-06-2022",
              ),
              SizedBox(height: 10,),
              SectionCard(
                name: "Medah",
                hour: "8:30 - 9:10",
                avatar: "assets/images/doctor2.jpg",
                specialite: "Gynecologue",
                date: "10-06-2022",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavNar(),
      );
  }
}
