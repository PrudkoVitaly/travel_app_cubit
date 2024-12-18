import 'package:flutter/material.dart';
import 'package:travel_app_cubit/utils/color.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({super.key, this.isResponsive, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/arrow_button.png",
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
