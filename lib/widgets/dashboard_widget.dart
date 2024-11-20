import 'package:fit_app_dashboard/widgets/activity_details_card.dart';
import 'package:fit_app_dashboard/widgets/header_widget.dart';
import 'package:fit_app_dashboard/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 18,),
        const HeaderWidget(),
        const SizedBox(height: 18,),
        const ActivityDetailsCard(),
        const SizedBox(height: 18,),
        const LineChartCard(),
        const SizedBox(height: 18,),
      ],
    );
  }
}