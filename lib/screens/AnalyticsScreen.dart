
import 'package:eclubapp/screens/TransactionsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
    import '../config/Constants.dart';
class AnalyticsScreen extends StatefulWidget {


  const AnalyticsScreen({super.key, required this.title}) ;
  final String title;
  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  late int _selectedIndex = 2;
   void _onItemTapped(int index) {
    /*setState(() {
      _selectedIndex = index;
    });*/
     setState(() {
      _selectedIndex = index;
    });
    if(index == 0 ){
      Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen(title: widget.title)),
    );
    }
   
    
  if(index == 1) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => TransactionsScreen(title: widget.title)),
    );
  }
  if(index == 2) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => const AnalyticsScreen(title: 'Análisís')),
    );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 231, 234),

      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                     const Color.fromARGB(255, 245, 231, 234),
                      const Color.fromARGB(255, 245, 231, 234),
                    ],
                  )
                )
      ),
            actions: [
        PopupMenuButton(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child:Padding(
      padding: const EdgeInsets.all(12.0),
      child: Image.asset(
        "assets/icons/eclub_icon_hambur_menu_outline_grey.webp",
        width: 32,
      ),
    ),
   // const Icon(Icons.menu_outlined, color: Colors.white, size: 30,),
  ),
  onSelected: (value) {
    if (value == "profile") {
      // add desired output
    }else if(value == "settings"){
      // add desired output
    }else if(value == "logout"){
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
            child: Icon(Icons.settings)
          ),
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
             child: Icon(Icons.logout)
          ),
          Text(
            'Logout',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    ),
  ],
)

      ]
      ) ,
     bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.white, 
           selectedItemColor: Colors.black,
            selectedFontSize: 12,
            unselectedFontSize: 12,
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
      //body
      //Acaba el body
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center  ,
        mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 30),
              Center(
                child: Column(
                  
                  children: [
                     CircleAvatar(
                      
                      radius: 80.0,
                      backgroundImage: 
                      AssetImage('assets/icons/eclub_icon_piechart_hero_circle_fullcolor.webp'),
                      ),
                  ],
                ),

  
    
                ),
                SizedBox(
                  height: 30
                ),
                Center(
                  child: Text(
                    'Que deseas revisar? ',
                    style: TextStyle(color: kColorPrimary,fontSize: 26), 
                  ),
                )
            ]
       )
      );
  }
}