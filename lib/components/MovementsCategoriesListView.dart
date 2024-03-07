// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../helpers/Helper.dart';
import 'MovementsCategoryRow.dart';


//Compente que muestra un lista de cateogiras por mes
class MovementsCategoriesListView extends StatefulWidget {
  const MovementsCategoriesListView({super.key, required this.mes});
  final String mes;
  @override
  // ignore: library_private_types_in_public_api
  _MovementsCategoriesListViewState createState() =>
      _MovementsCategoriesListViewState();
}

class _MovementsCategoriesListViewState
    extends State<MovementsCategoriesListView> {
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
                  initialItemCount: Helper.cats.length,
                  itemBuilder: (context, index, animation) {
                    return GestureDetector(
                      //You need to make my child interactive
                      onTap: () {
                        print(Helper.cats[index]);
                      },
                      child: MovementsCategoryRow(
                              category: Helper.cats[index], mes: widget.mes)
                          .animate()
                          .slide(duration: 1000.ms)
                          .fadeIn(duration: 500.ms),
                    );
                  })),
        ],
      ),
    );
  }
}
