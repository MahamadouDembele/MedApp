import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.35,

        ),
        const Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor1.jpg"),
            )
        ),
        Positioned(
            top: 20,
            right: 20,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: SvgPicture.asset("assets/icons/notif.svg", color : Colors.black),
            )
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/doctor.png")
        ),
        Positioned(
          left: 30,
          top: size.height * 0.10,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  "Bienvenue \nMamadou",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),


                ),
                const SizedBox(height: 10),
                Text(
                  "Comment vas-tu ?",
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      )
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/notif.svg",),
                      const Text(
                        "Appelez Mtn",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),


      ],

    );
  }
}
