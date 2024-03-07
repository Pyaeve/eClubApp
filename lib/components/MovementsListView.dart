// ignore_for_file: library_private_types_in_public_api, avoid_print, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../helpers/Samples.dart';
import 'package:flutter/material.dart';

import 'MovementsRow.dart';

//Componente par amostrar Listado de los Movimientos

class MovementsListView extends StatefulWidget {
  const MovementsListView({super.key});

  @override
  _MovementsListViewState createState() => _MovementsListViewState();
}

class _MovementsListViewState extends State<MovementsListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
            child: Padding(
          padding: EdgeInsets.only(left: 15, bottom: 15),
          child: Text(
            'Movimientos',
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 10, 10, 10),
                fontWeight: FontWeight.bold),
          ),
        )),
        Expanded(
            flex: 1,
            child: AnimatedList(
                scrollDirection: Axis.vertical,
                initialItemCount: movs.length,
                itemBuilder: (context, index, animation) {
                  return GestureDetector(
                    //You need to make my child interactive
                    onTap: () {
                      print(movs[index].category);
                    },
                    child: MovementsRow(movement: movs[index])
                        .animate()
                        .slide(duration: 1000.ms)
                        .fadeIn(duration: 500.ms),
                  );
                })),
      ],
    );
  }
}
