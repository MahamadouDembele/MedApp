import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleServices extends StatelessWidget {
  const CircleServices(
      {Key? key,
        required this.nom,
        required this.image,
      }) : super(key: key);
  final String nom,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 31,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: SvgPicture.asset(image, color: Colors.white,),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          nom,
          style: const TextStyle(
              fontSize: 12
          ),
        )
      ],
    );
  }
}
