// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:eclubapp/components/ChartPieByCategoryComponent.dart';
import 'package:eclubapp/components/MovementsCategoriesByMounthListView.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:flutter/material.dart';

import '../config/App.dart';

class BillsByMounthCategoriesContentComponent extends StatefulWidget {
  const BillsByMounthCategoriesContentComponent(
      {super.key, required this.category, required this.mounth});
  final String mounth;
  final String category;

  @override
  _BillsByMounthCategoriesContentComponentState createState() =>
      _BillsByMounthCategoriesContentComponentState();
}

class _BillsByMounthCategoriesContentComponentState
    extends State<BillsByMounthCategoriesContentComponent> {
  @override
  void initState() {
    super.initState();

    initializeDateFormatting('es', null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChartPieByCategoryComponent(
          category: widget.category,
          mounth: widget.mounth,
        ),
        const SizedBox(
          height: 20,
        ),
        MovementsCategoriesByMounthListView(
            category: widget.category, mounth: widget.mounth),
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
