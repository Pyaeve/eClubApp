import 'package:eclubapp/helpers/Helpers.dart';
import 'package:eclubapp/helpers/Samples.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
    
// ignore: must_be_immutable
class Fechas extends StatefulWidget {
  @override
  State<Fechas> createState() => _FechasState();
}

class _FechasState extends State<Fechas> {
    @override
  void initState() {
    super.initState();

   initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
  
    int totales = getTotalImportByMounth('enero');
   
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fechas ')  ,
      ),
      body: Text( getNumberFormatPY(totales)),
    );
  }
}