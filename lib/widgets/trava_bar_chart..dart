//import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:trava/data/config/styles.dart';
import 'package:trava/data/model/trava_chartdata.dart';

class TravaBarChart extends StatefulWidget {
  final List<double> trafficUpdates;

  const TravaBarChart({required this.trafficUpdates});

  @override
  State<TravaBarChart> createState() => _TravaBarChartState();
}

Map<String, double> dataMap = {
  "Total Routes": 500,
  "Open Routes": 22,
  "Active ": 300,
  "Closed": 5,
  "New Routes": 0,
};


List<Color> colorList = [
  const Color(0xffD95AF3),
  const Color(0xff3EE094),
  const Color(0xff3398F6),
  const Color(0xffFA4A42),
  const Color(0xffFE9539)
];

final gradientList = <List<Color>>[
  [
    Color.fromRGBO(223, 250, 92, 1),
    Color.fromRGBO(129, 250, 112, 1),
  ],
  [
    Color.fromRGBO(129, 182, 205, 1),
    Color.fromRGBO(91, 253, 199, 1),
  ],
  [
    Color.fromRGBO(175, 63, 62, 1.0),
    Color.fromRGBO(254, 154, 92, 1),
  ]
];

class _TravaBarChartState extends State<TravaBarChart> {
  @override

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Traffic Statics',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: PieChart(
              dataMap: dataMap,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width / 2,
              ringStrokeWidth: 24,
              animationDuration: const Duration(seconds: 3),
              chartValuesOptions: const ChartValuesOptions(
                  showChartValues: true,
                  showChartValuesOutside: true,
                  showChartValuesInPercentage: true,
                  showChartValueBackground: false),
              legendOptions: const LegendOptions(
                  showLegends: true,
                  legendShape: BoxShape.rectangle,
                  legendTextStyle: TextStyle(fontSize: 15),
                  legendPosition: LegendPosition.bottom,
                  showLegendsInRow: true),
              gradientList: gradientList,
            ),
          ),
        ],
      ),
    );
  }
}
