import 'package:flutter/material.dart';
import 'package:medapp/pages/composants/header.dart';
import 'package:medapp/pages/composants/section_card.dart';
import 'package:medapp/pages/composants/section_services.dart';
import 'package:medapp/pages/composants/section_title.dart';
import 'package:medapp/pages/planning/planning_page.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(

        backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            PageHeader(size: size),
            Container(
              width: double.infinity,
              height: size.height * 0.4,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 40
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SectionTitle(title: "Nos Servicess"),
                  const SectionServices(),
                  SectionTitle(
                      title: "Rendez-Vous",
                  onTapVoirtout:()=>{
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return const PlanningPage();
                        }))
                  }
                  ),
                  const SectionCard(
                    name: "Medah",
                    hour: "8:30 - 9:10",
                    avatar: "assets/images/doctor2.jpg",
                    specialite: "Gynecologue",
                    date: "10-06-2022",
                  ),
                ],
              ),
            )
          ],
        )

      ),
    );
  }
}

