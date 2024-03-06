
import 'package:flutter/material.dart';
import 'config/App.dart';
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
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 231, 234),
        fontFamily: 'Poppins',
        primaryColor: AppConfig.kColorPrimary,
        useMaterial3: true,     
      ),
      home:  const HomeScreen(title: 'eCLUB'), // const HomeScreen(title: 'eCLUB'),
      debugShowCheckedModeBanner : false
    );
  }
}
