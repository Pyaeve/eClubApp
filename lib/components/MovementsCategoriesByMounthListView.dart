// ignore_for_file: avoid_print,, prefer_interpolation_to_compose_strings, file_names, library_private_types_in_public_api

import '../components/MovementsRow.dart';
import '../screens/MovementsDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../Helpers/Helper.dart';
import '../models/Movements.dart';

//Compoente para mostrar Lista de una Categoria  y un mes especifico
class MovementsCategoriesByMounthListView extends StatefulWidget {
  const MovementsCategoriesByMounthListView(
      {super.key, required this.category, required this.mounth});
  final String category;
  final String mounth;
  @override
  _MovementsCategoriesByMounthListViewState createState() =>
      _MovementsCategoriesByMounthListViewState();
}

class _MovementsCategoriesByMounthListViewState
    extends State<MovementsCategoriesByMounthListView> {
  List<Movements> mov = [];
  int total = 0;
  @override
  void initState() {
    super.initState();
    mov = Helper.getMovementsOutByCategoryAndMounth(widget.category, widget.mounth);
    initializeDateFormatting('es', null);

    for (var i = 0; i < Helper.cats.length; i++) {
      total += Helper.getTotalImporatOutBNyCategoryAndMounths(Helper.cats[i], widget.mounth);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: AnimatedList(
                  scrollDirection: Axis.vertical,
                  initialItemCount: mov.length,
                  itemBuilder: (context, index, animation) {
                    return GestureDetector(
                      //You need to make my child interactive
                      onTap: () {
                        print('Negocio: ' +
                            mov[index].business +
                            '\n Importe:' +
                            mov[index].import.toString());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovementsDetailsScreen(
                                    title: 'Movimientos',
                                    movement: mov[index],
                                  )),
                        );
                      },
                      child: MovementsRow(
                        movement: mov[index],
                      )
                          .animate()
                          .slide(duration: 345.ms)
                          .fadeIn(duration: 500.ms),
                    );
                  })),
        ],
      ),
    );
  }
}
