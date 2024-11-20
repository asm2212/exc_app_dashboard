import 'package:fit_app_dashboard/data/health_details.dart';
import 'package:fit_app_dashboard/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true, // Allows GridView to take minimal space
      physics: const NeverScrollableScrollPhysics(), // Prevents nested scrolling conflicts
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Four items per row
        crossAxisSpacing: 15, // Horizontal spacing
        mainAxisSpacing: 12, // Vertical spacing
      ),
      itemBuilder: (context, index) => CustomCardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center, // Ensures text is centered
            ),
          ],
        ),
      ),
    );
  }
}
