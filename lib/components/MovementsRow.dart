// ignore_for_file: library_private_types_in_public_api, file_names
import '../helpers/Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../models/Movements.dart';

class MovementsRow extends StatefulWidget {
  const MovementsRow({super.key, required this.movement});
  final Movements movement;

  @override
  _MovementsRowState createState() => _MovementsRowState();
}

class _MovementsRowState extends State<MovementsRow> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(widget.movement.img),
              ),
              title: Text(widget.movement.business,
                  style:  const TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold)),
              subtitle: Text(widget.movement.category,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 136, 136, 136),
                    fontSize: 11,
                    fontFamily: 'Poppins',
                  )),
              trailing: Column(children: [
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text(Helper.getNumberFormatPY(widget.movement.import),
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: FontWeight.bold)),
                ).animate().fadeIn(duration: 200.ms).slideX(duration: 200.ms).flipV(duration: 200.ms),
                Text(widget.movement.dt,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 136, 136, 136),
                          fontSize: 11,
                          fontFamily: 'Poppins',
                        ))
                   .animate().fadeIn(duration: 200.ms).slideY(duration: 200.ms).flip(duration: 500.ms)
              ])).animate().fadeIn(duration: 200.ms).slideY(duration: 200.ms).flip(duration: 500.ms)
        ],
      ),
    ).animate().fadeIn(duration:200.ms);

    /*
     */
  }
}
