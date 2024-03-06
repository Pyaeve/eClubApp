import 'package:eclubapp/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/AnalyticsScreen.dart';
import '../screens/Fechas.dart';

// ignore: must_be_immutable
class MenuBottomNavigationBar extends StatefulWidget {
  const MenuBottomNavigationBar({super.key, required this.item});
  final int item;
  @override
  // ignore: library_private_types_in_public_api
  _MenuBottomNavigationBarState createState() =>
      _MenuBottomNavigationBarState();
}

class _MenuBottomNavigationBarState extends State<MenuBottomNavigationBar> {
  int selecteditem = 1;
  void _onItemTapped(int index) {
   
    setState(() {
      selecteditem = index;
    });
    switch (index) {
      case 0:
        Navigator.pop(
          context,
          MaterialPageRoute(
              builder: (context) => const HomeScreen(title: 'eCLUB')),
        );
        break;

      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                    Fechas()),
        );
        break;
      case 2:
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const AnalyticsScreen(
                  title: 'Análisis',
                )),
      );
      break;
    }
/*
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
            builder: (context) => const AnalyticsScreen(
                  title: 'Análisis',
                )),
      );
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: const Color.fromARGB(255, 129, 114, 114),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      enableFeedback: false,
      currentIndex: widget.item,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
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
    );
  }
}
