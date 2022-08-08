import 'package:flutter/material.dart';
import 'package:plant_planet/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Planet',
      theme: ThemeData(
        fontFamily: 'Pacifico-Regular',
        colorScheme: ColorScheme.fromSwatch().copyWith(

          primary:const  Color(0xff0c3832),
          secondary:const  Color.fromARGB(255, 65, 123, 116),

        ),
      ),
      home: const Home(),
    );
  }
}
