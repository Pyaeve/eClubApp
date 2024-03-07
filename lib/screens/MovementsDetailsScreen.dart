// ignore_for_file: , file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../config/App.dart';
import '../models/Movements.dart';
import '../helpers/Helper.dart';
import '../components/MenuRightActionBar.dart';

//Screen para ver lso detalles de cada moviento
class MovementsDetailsScreen extends StatefulWidget {
  const MovementsDetailsScreen(
      {super.key, required this.title, required this.movement});
  final String title;
  final Movements movement;
  @override
  _MovementsDetailsScreenState createState() => _MovementsDetailsScreenState();
}

class _MovementsDetailsScreenState extends State<MovementsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 241, 241, 241)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppConfig.kColorPrimary,
            AppConfig.kColorSecundary,
          ],
        ))),
        actions: const [
          MenuRightActionBar(
            iconColor: 'blanco',
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            color: AppConfig.kColorBackgroundWidget,
          ),
          Container(
            height: 190,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    AppConfig.kColorPrimary,
                    AppConfig.kColorSecundary,
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(38),
                    bottomLeft: Radius.circular(38))),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Text(widget.movement.business,
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Helper.getNumberFormatPY(widget.movement.import),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
         
         Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Padding(
                     padding:  EdgeInsets.only(top:15, left: 20),
                     child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Operación:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Fecha:'),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Hora:'),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Cod de Referencia:')
                          ],
                        ),
                   ),
                   
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.movement.category,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(Helper.getDatetimeFormatted(
                                'dd/MM/yyy', widget.movement.dt)),
                            const SizedBox(
                              height: 15,
                            ),
                            // ignore: prefer_interpolation_to_compose_strings
                            Text(Helper.getDatetimeFormatted(
                                    'HH:mm', widget.movement.dt) +
                                ' hs'),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(widget.movement.ref)
                          ],
                        ),
                    )
                   
                  ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
