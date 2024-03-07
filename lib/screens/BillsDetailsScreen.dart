// ignore: unused_import
// ignore_for_file: library_private_types_in_public_api, file_names
import 'package:flutter/material.dart';
import 'package:eclubapp/components/MenuRightActionBar.dart';
import 'package:eclubapp/config/App.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../components/BillsByMounthCategoriesContentComponent.dart';

class BillsDetailsScreen extends StatefulWidget {
  const BillsDetailsScreen({super.key, required this.category, required this.mounth});
  final String  mounth;
  final String category;
  @override
  _BillsDetailsScreenState createState() => _BillsDetailsScreenState();
}

class _BillsDetailsScreenState extends State<BillsDetailsScreen> {
   int tabItemSelect = 0;
   List<String> meses = ['enero','febrero','marzo'];
   String mes = '';
  @override
  void initState() {
    super.initState();

    initializeDateFormatting('es', null);
    
  }

  @override
  Widget build(BuildContext context) {
    switch(widget.mounth){
      case 'enero':
        tabItemSelect = 0;
        mes = meses[0];
        break;
      case 'febrero':
        tabItemSelect = 1;
        mes = meses[2];
      break;
      case 'marzo':
       tabItemSelect = 2;
        mes = meses[2];
       break;
     
      

    }
    return DefaultTabController(
      length: 12,
      initialIndex: tabItemSelect,
      child: Scaffold(
        backgroundColor:AppConfig.kColorBackgroundWidget,
        appBar: AppBar(
          title: const Center(
              child: Text("Gastos", style: TextStyle(color: Colors.grey))),
          centerTitle: true,
          backgroundColor: AppConfig.kColorBackgroundWidget,
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
                text: "Enero 2024",
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
        body:   TabBarView(
          children: [
          
              Center(child:

               BillsByMounthCategoriesContentComponent(category: widget.category,mounth:'enero') ,
                  
              ),
              //  MovementsCategoriesListView
            Center(child:
               BillsByMounthCategoriesContentComponent(category: widget.category,mounth:'febrero')
                  
              ),
               Center(child:
               BillsByMounthCategoriesContentComponent(category: widget.category,mounth:'marzo')

              ),
          ],
        ),
      ),
    );
  }
}
