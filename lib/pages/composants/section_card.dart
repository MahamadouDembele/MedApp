import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionCard extends StatelessWidget {
   const SectionCard({
    Key? key,
    required this.name,
    required this.date,
    required this.avatar,
    required this.hour,
    required this.specialite

  }) : super(key: key);
  final String hour,date;
  final String name,avatar,specialite;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)
              ),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    color: Colors.black.withOpacity(.08),
                    blurRadius: 5
                )
              ]
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
               horizontal: 20
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RDV date",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.grey
                  )
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                    child:Row(
                      children: [
                        SvgPicture.asset("assets/icons/home.svg"),
                        const SizedBox(width:10),
                        Text(date),
                        const SizedBox(width:10),
                        const CircleAvatar(radius: 2),
                        const SizedBox(width:10),
                        Text(hour)
                      ],
                    ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.2)
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage(avatar)
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                              child:SvgPicture.asset("assets/icons/video.svg") ,
                            )
                        )
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr $name"),
                        Text("$specialite ",style: Theme.of(context).textTheme.caption)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

        ),
        Container(),
        Positioned(
          top: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: (5),
              color: Colors.grey,
            )
        ),
      ],

    );
    //Rendre le Stack dynamique
  }
}
