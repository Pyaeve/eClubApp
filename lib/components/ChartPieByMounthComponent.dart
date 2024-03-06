// ignore_for_file: library_private_types_in_public_api, file_names, avoid_print
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../config/App.dart';
import '../helpers/Helpers.dart';
import '../screens/BillsDetailsScreen.dart';

class ChartPieByMounthComponent extends StatefulWidget {
  const ChartPieByMounthComponent({super.key, required this.mes});

  final String mes;

  @override

  _ChartPieByMounthComponentState createState() => _ChartPieByMounthComponentState();
}

class _ChartPieByMounthComponentState extends State<ChartPieByMounthComponent> {
  int total = 0;
  int touchedIndex = -1;

  @override
  void initState() {
    super.initState();

    initializeDateFormatting('es', null);
   
    for(var i=0; i <  Helper.cats.length; i++){
        total += Helper.getTotalImporatOutBNyCategoryAndMounths(Helper.cats[i], widget.mes);
    }
  }


  List<PieChartSectionData> showingSections() {
    return List.generate(Helper.cats.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 14.0 : 12.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
          return PieChartSectionData(
            color: Helper.getColorByCategory(Helper.cats[i]),
            value: Helper.getTotalImporatOutBNyCategoryAndMounths(Helper.cats[i], widget.mes).toDouble(),
            title:  Helper.getTotalImporatOutBNyCategoryAndMounths(Helper.cats[i], widget.mes).toString(),
            radius: radius,
            showTitle: false,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppConfig.mainTextColor1,
              shadows: shadows,
            ),
            badgeWidget: AnimatedContainer(
            duration: PieChart.defaultDuration,
            width: 56,
      height: 56,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
       /* border: Border.all(
          color: Color.fromARGB(255, 250, 250, 250),
          width: 0,
        ),*/
        
      ),
      padding: const EdgeInsets.all(56 * .15),
      child: Center(
        child: Image.asset(Helper.getImgByCategory(Helper.cats[i]))
      ),
    )

          );
       
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:85),
                  child: Column(
                  children: [
                                      Text(widget. mes, 
                    style: const TextStyle(
                      color: Colors.black, 
                      fontSize: 16, 
                      fontWeight: 
                      FontWeight.bold),),
                    Text(
                        Helper.getNumberFormatPY(total), style: const TextStyle(
                      color: AppConfig.kColorPrimary, 
                      fontSize: 15, 
                      fontWeight: 
                      FontWeight.bold),
                        )
                  ],
                  
                               ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1.6,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;

                               // ignore: prefer_interpolation_to_compose_strings
                               print('Hciceste clein en la Categoria:'+ Helper.cats[touchedIndex]);
                                Navigator.push(
                      context,
          MaterialPageRoute(
              builder: (context) =>
                     BillsDetailsScreen(category: Helper.cats[touchedIndex], mounth: widget.mes)),
        );

        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 70,
                    sections: showingSections(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
