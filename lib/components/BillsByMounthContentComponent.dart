// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../components/ChartPieByMounthComponent.dart';
import '../components/MovementsCategoriesListView.dart';
import '../config/App.dart';

//sComponente para mostrar contenido por mes


class BillsByMounthContentComponent extends StatefulWidget {
  const BillsByMounthContentComponent({super.key, required this.mounth});
  final String mounth;

  @override
  _BillsByMounthContentComponentState createState() =>
      _BillsByMounthContentComponentState();
}

class _BillsByMounthContentComponentState
    extends State<BillsByMounthContentComponent> {
  @override
  void initState() {
    super.initState();

    initializeDateFormatting('es', null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChartPieByMounthComponent(mes: widget.mounth),
        const SizedBox(
          height: 20,
        ),
        MovementsCategoriesListView(mes: widget.mounth),
        const Padding(
          padding: EdgeInsets.all(12),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppConfig.kColorPrimary),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: null,
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Ver Extracto',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
