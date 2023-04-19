import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {Key? key,
        required this.title,
         this.onTapVoirtout
      }) : super(key: key);

  final String title;
  final VoidCallback? onTapVoirtout ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
        title,
        style: const TextStyle(
            fontSize: 16
        ),),
        if(onTapVoirtout != null)
          TextButton(onPressed: onTapVoirtout, child: const Text("Voir tout"))
      ],
    );
  }
}
