import 'package:fit_app_dashboard/model/health_model.dart';

class HealthDetails {
  final healthData = [
    HealthModel(
        icon: "assets/icons/burn.png", value: "305", title: "Calories burned"),
    HealthModel(
        icon: "assets/icons/steps.png", value: "10983", title: "Steps"),
    HealthModel(
        icon: "assets/icons/distance.png", value: "7km", title: "Distance"),
    HealthModel(
      icon: "assets/icons/sleep.png", value: "7h48m", title: "Sleep"),
  ];
}
