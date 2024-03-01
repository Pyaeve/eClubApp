import 'package:eclubapp/components/MenuBottomNavigationBar.dart';
import 'package:eclubapp/components/MenuRightActionBar.dart';
import 'package:eclubapp/helpers/Helpers.dart';
import 'package:eclubapp/helpers/Samples.dart';
import 'package:flutter/material.dart';
import '../components/MovementsListView.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late  int totalImporte =calcularTotalImporte();
   int calcularTotalImporte(){
     var total = 0;
     
     for(var mov in movs){
      total += mov.import;

     
     }
     return total;
   }
  @override
  void initState() {
    super.initState();
  totalImporte = calcularTotalImporte();
  }

  @override
  Widget build(BuildContext context) {

  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 231, 234),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Center(
              child: Text(widget.title,
                  style: const TextStyle(color: Colors.white))),
        ),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffdd003b),
            Color(0xffff6720),
          ],
        ))),
        actions:  const [
         MenuRightActionBar()
        ],
      ),
      bottomNavigationBar: const MenuBottomNavigationBar(item: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          Color(0xffdd003b),
                          Color(0xffff6720),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38),
                          bottomLeft: Radius.circular(38))),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Disponible',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20))
                          .animate()
                          .fadeIn(),
                      // baseline=800ms

                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(getNumberFormatPY(totalImporte),
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold))
                              .animate()
                              .slide(duration: 1500.ms)
                              .flipV(duration: 1000.ms),
                          const SizedBox(width: 25),
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      )
                          .animate()
                          .slide(duration: 550.ms)
                          .flipV(duration: 1200.ms),
                    ],
                  ).animate().scale().flipV(duration: 1200.ms),
                ),
              ],
            ),
          ),
          const Expanded(flex: 2, child: MovementsListView())
        ],
      ),
    );
  }
}
