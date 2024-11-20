import 'package:fit_app_dashboard/const/constant.dart';
import 'package:fit_app_dashboard/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fit_app_dashboard/data/line_chart_custom_data.dart'; 

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineChartCustomData(); 

    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final title = data.bottomTitle[value.toInt()] ?? "-";
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[400],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        final title = data.leftTitle[value.toInt()] ?? "-";
                        return Text(
                          title,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                    ),
                    dotData: FlDotData(show: false),
                    spots: data.spots, // List of FlSpot points.
                  ),
                ],
                minX: 0,
                maxX: 7, // Set appropriate max value for X-axis.
                minY: 0,
                maxY: 120, // Corrected maxY (was duplicated).
              ),
            ),
          ),
        ],
      ),
    );
  }
}
