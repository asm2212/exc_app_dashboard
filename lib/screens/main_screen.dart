
import 'package:fit_app_dashboard/widgets/dashboard_widget.dart';
import 'package:fit_app_dashboard/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
              ),
               Expanded(
              flex: 7,
              child: DashboardWidget(),
              ),
               Expanded(
              flex: 2,
              child: Container(color: Colors.green,),
              ),
          ],
        )
      ),
    );
  }
}