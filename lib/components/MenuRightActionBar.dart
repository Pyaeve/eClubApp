import 'package:flutter/material.dart';
    
class MenuRightActionBar extends StatefulWidget {
  const MenuRightActionBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuRightActionBarState createState() => _MenuRightActionBarState();
}

class _MenuRightActionBarState extends State<MenuRightActionBar> {
  @override
  Widget build(BuildContext context) {
    return 
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
          );
        
  }
}