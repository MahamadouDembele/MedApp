import 'package:flutter/material.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
            Radius.circular(12)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Prendre RDV",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                    Radius.circular(12)
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0,10),
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.2)
                  ),
                ]
            ),
            child:const Center(
                child: Text("Urgence")
            ),
          )
        ],
      ),
    );
  }
}
