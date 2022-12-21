import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: Styles.textCardColor)),
    );
  }
}
