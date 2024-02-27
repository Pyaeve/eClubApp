import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCLUB',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 196, 103, 17)),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'eCLUB'),
      debugShowCheckedModeBanner : false
    );
  }
}
