import 'package:flutter/material.dart';
import 'package:medapp/pages/composants/bottom_navbar.dart';
import 'package:medapp/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appli de Medecin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: BottomNavNar(),
      ) ,
    );
  }
}

