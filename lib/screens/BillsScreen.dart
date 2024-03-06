// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../components/MenuRightActionBar.dart';
import '../config/App.dart';
import '../components/BillsByMounthContentComponent.dart';
class BillsScreen extends StatefulWidget {
  const BillsScreen({super.key});

  @override
  _BillsScreenState createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  final int tabItemSelect = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      initialIndex: tabItemSelect,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 231, 234),
        appBar: AppBar(
          title: const Center(
              child: Text("Gastos", style: TextStyle(color: Colors.grey))),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 245, 231, 234),
          actions: const [MenuRightActionBar(iconColor: 'gris',)],
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelColor: AppConfig.kColorPrimary,
            indicatorColor: AppConfig.kColorPrimary,
            unselectedLabelColor: Colors.grey,
            indicatorPadding: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            tabs: [

              
              Tab(
                text: "Enero 2022",
              ),
              Tab(
                text: "Febrero 2024",
              ),
              Tab(
                text: "Marzo 2024",
              ),
           
            ],

          ),
        ),
        body:  const TabBarView(
          children: [
          
              Center(child:

               BillsByMounthContentComponent(mounth: 'enero'),
                  
              ),
              //  MovementsCategoriesListView
           Center(child:
               BillsByMounthContentComponent(mounth: 'febrero'),
                  
              ),
              Center(child:
               BillsByMounthContentComponent(mounth: 'marzo'),
                  
              ),
          
          ],
        ),
      ),
    );
  }

}
