import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AnalyticsScreen.dart';
import 'TransactionsScreen.dart';
import '../components/MovementsListView.dart';

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
  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    /*setState(() {
      _selectedIndex = index;
    });*/
    setState(() {
      _selectedIndex = 0;
    });
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const TransactionsScreen(title: 'Movimientos')),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const AnalyticsScreen(title: 'Análisis')),
      );
    }
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
          actions: [
            PopupMenuButton(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/icons/eclub_icon_hambur_menu_outline.webp",
                    width: 32,
                  ),
                ),
                // const Icon(Icons.menu_outlined, color: Colors.white, size: 30,),
              ),
              onSelected: (value) {
                if (value == "profile") {
                  // add desired output
                } else if (value == "settings") {
                  // add desired output
                } else if (value == "logout") {
                  // add desired output
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: "profile",
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.people),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "settings",
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.settings)),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "logout",
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.logout)),
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          unselectedItemColor: const Color.fromARGB(255, 129, 114, 114),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_down_right_arrow_up_left),
              label: 'Tranferencias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_outlined),
              label: 'Análisis',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Cuenta',
            ),
          ],
        ),
        body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                                          height: 200,
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
                                          child: const Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Text('Disponible',
                                                  style:
                                                      TextStyle(color: Colors.white, fontSize: 20)),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Gs 2.000.000',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 35,
                                                          fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 20),
                                                  Icon(
                                                    Icons.remove_red_eye_outlined,
                                                    color: Colors.white,
                                                    size: 40,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                      ],
                    ),
                  )
                  ,
               
               const Expanded(flex: 2,child: MovementsListView())
                 
                 
              
              
            ],
          ),
        );
  }
}
