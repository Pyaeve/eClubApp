// ignore_for_file: library_private_types_in_public_api, file_names
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../helpers/helper.dart';

//componete que grafica  fila  de una categoria y mes especifico
class MovementsCategoryRow extends StatefulWidget {
  const MovementsCategoryRow(
      {super.key, required this.category, required this.mes});
  final String category;
  final String mes;
  @override
  _MovementsCategoryRowState createState() => _MovementsCategoryRowState();
}

class _MovementsCategoryRowState extends State<MovementsCategoryRow> {
  int total = 0;
  String img = '';

  @override
  Widget build(BuildContext context) {
    total = Helper.getTotalImporatOutBNyCategoryAndMounths(
        widget.category, widget.mes);
    img = Helper.getImgByCategory(widget.category);
    if (total == 0) {
      return const SizedBox(height: 0);
    }
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage(Helper.getImgByCategory(widget.category)),
                  ),
                  title: Text(widget.category,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      )),
                  trailing: Column(children: [
                    const SizedBox(
                      height: 11,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(Helper.getNumberFormatPY(total),
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.bold)),
                    )
                        .animate()
                        .fadeIn(duration: 200.ms)
                        .slideX(duration: 200.ms)
                        .flipV(duration: 200.ms),
                  ]))
              .animate()
              .fadeIn(duration: 200.ms)
              .slideY(duration: 200.ms)
              .flip(duration: 500.ms)
        ],
      ),
    ).animate().fadeIn(duration: 200.ms);
  }
}
