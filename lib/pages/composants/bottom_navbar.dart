import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavNar extends StatefulWidget {
  const BottomNavNar({Key? key}) : super(key: key);

  @override
  State<BottomNavNar> createState() => _BottomNavNarState();
}

class _BottomNavNarState extends State<BottomNavNar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
      return Container(
        height: size.height * 0.12,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("assets/icons/home.svg",color: Colors.cyan,height: 24,),
            SvgPicture.asset("assets/icons/appointment.svg",height: 24),
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue,
              child: IconButton(
                  icon: const Icon(Icons.add), onPressed: () {  },
              ),
            ),
            SvgPicture.asset("assets/icons/profile.svg",height: 24),
            SvgPicture.asset("assets/icons/message.svg",height: 24),
          ],
        ),

      );
  }
}
