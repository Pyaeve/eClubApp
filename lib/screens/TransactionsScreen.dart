import 'package:eclubapp/components/MenuRightActionBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AnalyticsScreen.dart';
    
class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key, required this.title}) ;
  final String title;
  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  late int _selectedIndex = 1;
   void _onItemTapped(int index) {
   
    if(index == 0 && index < 3) {
      setState(() {
      _selectedIndex = index;
    });
    }
  if(index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TransactionsScreen(title: 'Movimientos')),
    );
  }
  if(index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AnalyticsScreen(title: 'Analisís')),
    );
  }
  }
 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: const Icon(
            Icons.arrow_back, color: Color.fromARGB(255, 241, 241, 241)),
               onPressed: () => Navigator.of(context).pop(),
        ), 
  
  centerTitle: true,
        title:  Text(
                    widget.title, 
                    style: const TextStyle(
                        color: Colors.white)
                    )
          
     ,
        
        flexibleSpace: Container(
          decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffdd003b),
                      Color(0xffff6720),
                    ],
                  )
                )
      ),
      actions: const [
         MenuRightActionBar()
      ],
      ),
      
      body: Column(
            children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                          width: double.infinity,
                     height:  (MediaQuery.of(context).size.height -  138),
                    color:const Color.fromARGB(255, 245, 231, 234),
                    ),
                    Container(
                      height:200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                    colors:<Color> [
                      Color(0xffdd003b),
                      Color(0xffff6720),
                    
                    ],
                  ),borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(38),
                      bottomLeft: Radius.circular(38))
                      
                ),
              child: const Column(
                children:<Widget>[
                  SizedBox(
                    height: 25,
                   ),
                  Text(
                  'Disponible',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    )
                  ),  
                  SizedBox(
                    height: 25, 
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Gs 2.000.000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)
                      ),
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
)
          ],
        ),
     
      
    );

  }
}