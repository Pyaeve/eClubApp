// ignore_for_file: file_names

import 'package:eclubapp/components/MenuRightActionBar.dart';
import 'package:eclubapp/screens/BillsScreen.dart';
import 'package:flutter/material.dart';

import '../components/MenuBottomNavigationBar.dart';
import '../config/App.dart';


class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key, required this.title});
  final String title;
  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 231, 234),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(widget.title),
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 245, 231, 234),
                Color.fromARGB(255, 245, 231, 234),
              ],
            ))),
            actions: const [
            MenuRightActionBar(iconColor: 'gris',)
            ]),
        bottomNavigationBar:     const MenuBottomNavigationBar(item: 2),
        //body
        //Acaba el body
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 15),
              const Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage(
                          'assets/icons/eclub_icon_piechart_hero_circle_fullcolor.webp'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '¿Que deseas revisar?',
                  style: TextStyle(
                      color: AppConfig.kColorPrimary,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //ingresos
                    const InkWell(
                      child: Column(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: ColoredBox(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Image(
                                        width: 100,
                                        height: 80,
                                        image: AssetImage(
                                            'assets/icons/eclub_icon_billete_primary_color_transparent.webp')),
                                    Text(
                                      'Ingresos',
                                      style: TextStyle(
                                          color: AppConfig.kColorPrimary,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),

                    //Gastos
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BillsScreen(),
                            ));
                      },
                      child: const Column(
                        children: [
                          DecoratedBox(
                            decoration:  BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: ColoredBox(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Image(
                                      height: 80,
                                      width: 100,
                                      image: AssetImage(
                                          'assets/icons/eclub_icon_targeta_primary_color_transparent_64x64.webp'),
                                    ),
                                    Text(
                                      'Gastos',
                                      style: TextStyle(
                                          color: AppConfig.kColorPrimary,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]));
  }
}
