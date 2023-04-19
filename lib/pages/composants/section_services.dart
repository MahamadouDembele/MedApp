import 'package:flutter/material.dart';
import 'package:medapp/pages/composants/circle_services.dart';

class SectionServices extends StatelessWidget {
  const SectionServices(
      {Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleServices(
            nom: "Consultation",
            image : "assets/icons/consultation.svg",
          ),
          CircleServices(
            nom: "Medecine",
            image : "assets/icons/medecine.svg",
          ),
          CircleServices(
            nom: "Ambulance",
            image : "assets/icons/ambulance.svg",
          )
        ],
      )
    );
  }
}
