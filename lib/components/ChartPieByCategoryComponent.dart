import 'package:eclubapp/config/Constants.dart';
import 'package:eclubapp/helpers/Samples.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../config/App.dart';
import '../helpers/Helpers.dart';

class ChartPieByCategoryComponent extends StatefulWidget {
  const ChartPieByCategoryComponent({super.key, required this.category, required this.mounth});

  final String category;
  final String mounth;

  @override

  _ChartPieByCategoryComponentState createState() => _ChartPieByCategoryComponentState();
}

class _ChartPieByCategoryComponentState extends State<ChartPieByCategoryComponent> {
  int total = 0;
  int touchedIndex = -1;

  @override
  void initState() {
    super.initState();

    initializeDateFormatting('es', null);
   
   
      total += getTotalImporatBNyCategoryAndMounths(widget.category, widget.mounth);
    
  }


  List<PieChartSectionData> showingSections() {
    return List.generate(1, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 14.0 : 12.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
          return PieChartSectionData(
            color: getColorByCategory(widget.category),
            value: total.toDouble(),
            title:  total.toString(),
            radius: radius,
            showTitle: false,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
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
        child: Image.asset(getImgByCategory(widget.category))
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
                  padding: const EdgeInsets.only(top:75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                      Center(
                                        child: SizedBox(
                                          width: 250,
                                          child: Text(widget.category, 
                                                              style: const TextStyle(
                                                                color: Colors.black, 
                                                                fontSize: 12, 
                                                                fontWeight: 
                                                                FontWeight.bold),),
                                        ),
                                      ),
                    Text(
                        getNumberFormatPY(total), style: const TextStyle(
                      color: kColorPrimary, 
                      fontSize: 12, 
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