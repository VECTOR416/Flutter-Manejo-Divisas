import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Gastos vs Ingresos", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF5337F5))),
            Text("Resumen Semanal", style: TextStyle(color: Color(0xFF5337F5))),
            SizedBox(height: 8),
            Stack(
              children: <Widget>[
                AspectRatio(aspectRatio: 1.70, child: LineChart(mainData())),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_circle_up, size: 16, color: const Color(0xFF5337F5)),
                Text("Ingresos", style: TextStyle(color: const Color(0xFF5337F5), fontWeight: FontWeight.bold)),
                SizedBox(width: 16),
                Icon(Icons.arrow_circle_down, size: 16 , color: const Color(0xFFf44235)),
                Text("Egresos", style: TextStyle(color: const Color(0xFFf44235), fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}

LineChartData mainData() {
  return LineChartData(
    lineTouchData: LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        getTooltipColor: (touchedSpot) {
          return Color(0xFFf9f7fe);
        },
        tooltipBorder: BorderSide(color: Color(0xFF5337F5)),
      ),
    ),
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      drawHorizontalLine: true,
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 30,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(color: const Color(0xFF5337F5)),
    ),
    lineBarsData: [
      LineChartBarData(
        preventCurveOverShooting: true,
        color: Color(0xFF5438f5),
        spots: const [
          FlSpot(0, 0),
          FlSpot(1, 4),
          FlSpot(2, 3),
          FlSpot(3, 7),
          FlSpot(4, 9),
          FlSpot(5, 4),
          FlSpot(6, 7),
        ],
        isCurved: true,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
      ),
      LineChartBarData(
        preventCurveOverShooting: true,
        color: Color(0xFFf44235),
        spots: const [
          FlSpot(0, 1),
          FlSpot(1, 5),
          FlSpot(2, 2),
          FlSpot(3, 5),
          FlSpot(4, 2),
          FlSpot(5, 7),
          FlSpot(6, 4),
        ],
        isCurved: true,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
      ),
    ],
  );
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 9);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('L', style: style);
      break;
    case 1:
      text = const Text('M', style: style);
      break;
    case 2:
      text = const Text('X', style: style);
      break;
    case 3:
      text = const Text('J', style: style);
      break;
    case 4:
      text = const Text('V', style: style);
      break;
    case 5:
      text = const Text('S', style: style);
      break;
    case 6:
      text = const Text('D', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(meta: meta, child: text);
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 10);
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0k';
      break;
    case 3:
      text = '30k';
      break;
    case 6:
      text = '60k';
      break;
    case 9:
      text = '90k';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.center);
}
