import 'package:fit_app_dashboard/const/constant.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCardWidget({super.key, required this.child, this.color, this.padding});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: color ?? cardBackground,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12),
        child: child, 
      ),
    );
  }
}