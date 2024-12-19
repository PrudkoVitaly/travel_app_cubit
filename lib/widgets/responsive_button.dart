import 'package:flutter/material.dart';
import 'package:travel_app_cubit/utils/color.dart';

import 'app_text.dart';

class MyResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  MyResponsiveButton({super.key, this.isResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width:  width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(text: "Book Trip", color: Colors.white),
            Image.asset(
              "images/arrow_button.png",
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
