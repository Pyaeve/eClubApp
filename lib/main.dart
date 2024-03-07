
import 'package:flutter/material.dart';
import 'config/App.dart';
import 'screens/HomeScreen.dart';

void main() {
  
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.kName,
      theme: ThemeData(
        scaffoldBackgroundColor:AppConfig.kColorBackgroundWidget,
        fontFamily: 'Poppins',
        primaryColor: AppConfig.kColorPrimary,
        useMaterial3: true,     
      ),
      home:  const HomeScreen(title: AppConfig.kName), // const HomeScreen(title: 'eCLUB'),
      debugShowCheckedModeBanner : false
    );
  }
}
