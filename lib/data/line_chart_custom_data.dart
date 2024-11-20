import 'package:fl_chart/fl_chart.dart';

class LineChartCustomData {
  final List<FlSpot> spots = const [
    FlSpot(1, 21.04),
    FlSpot(2, 21.04),
    FlSpot(3, 21.04),
    FlSpot(4, 21.04),
    FlSpot(5, 21.04),
    FlSpot(6, 21.04),
    FlSpot(7, 21.04),
    FlSpot(8, 45.45),
    FlSpot(9, 45.45),
    FlSpot(10, 67.67),
    FlSpot(11, 67.67),
    FlSpot(12, 34.34),
  ];

  final Map<int, String> leftTitle = {
    0: "0",
    20: "2k",
    40: "4k",
    60: "6k",
    80: "8k",
    100: "10k",
  };

  final Map<int, String> bottomTitle = {
    0: "Jan",
    2: "Feb",
    4: "Mar",
    6: "Apr",
    8: "May",
    10: "Jun",
    12: "Jul",
  };
}
