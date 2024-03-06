import 'package:eclubapp/components/MovementsRow.dart';
import 'package:eclubapp/helpers/Samples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../models/Movements.dart';
    
class MovementsCategoriesByMounthListView extends StatefulWidget {
  const MovementsCategoriesByMounthListView({super.key, required this. category, required this.mounth});
final String category;
final String mounth;
  @override
  _MovementsCategoriesByMounthListViewState createState() => _MovementsCategoriesByMounthListViewState();
}

class _MovementsCategoriesByMounthListViewState extends State<MovementsCategoriesByMounthListView> {
 List<Movements> mov = [];
  int total =0;
 @override
  void initState() {
    super.initState();
mov= getMovementsByCategoryAndMounth(widget.category, widget.mounth);
    initializeDateFormatting('es', null);
   
    for(var i=0; i <  cats.length; i++){
        total += getTotalImporatBNyCategoryAndMounths(cats[i], widget.mounth);
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
                  return GestureDetector( //You need to make my child interactive
                onTap: (){print(mov[index]);},
                child: MovementsRow(movement: mov[index],).animate().slide(duration: 345.ms).fadeIn(duration: 500.ms),
      
                );
                })
          ),
        ],
      ),
    );
  }
}