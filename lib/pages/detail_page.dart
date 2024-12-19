import 'package:flutter/material.dart';
import 'package:travel_app_cubit/widgets/app_large_text.dart';
import 'package:travel_app_cubit/widgets/responsive_button.dart';

import '../utils/color.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int isSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/mountain.jpg",
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Yosemite", color: Colors.black54),
                        AppLargeText(text: "\$250", color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            color: AppColors.mainColor, size: 20),
                        const SizedBox(width: 5),
                        AppText(
                            text: "USA, New York", color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Colors.yellow.shade600,
                            );
                          }),
                        ),
                        const SizedBox(width: 10),
                        AppText(text: "5.0", color: Colors.black54),
                      ],
                    ),
                    const SizedBox(height: 20),
                    AppLargeText(
                      text: "People",
                      color: Colors.black87,
                    ),
                    const SizedBox(height: 5),
                    AppText(
                      text: "Number of people in your group",
                      color: Colors.black54,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              isSelectedIndex = index + 1;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              color: isSelectedIndex == index + 1
                                  ? Colors.white
                                  : Colors.black54,
                              backgroundColor: isSelectedIndex == index + 1
                                  ? AppColors.mainColor
                                  : Colors.grey.shade300,
                              borderColor: Colors.grey.shade300,
                              size: 60,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 20),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black87,
                    ),
                    const SizedBox(height: 5),
                    AppText(
                      text:
                          "You can visit many places in Yosemite National Park, including Yosemite Valley, Yosemite Falls, and Yosemite Dams.",
                      color: Colors.black54,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppButtons(
                          color: AppColors.mainColor,
                          backgroundColor: Colors.white,
                          borderColor: AppColors.mainColor,
                          size: 60,
                          isIcon: true,
                          icon: Icons.favorite_border,
                        ),
                         const SizedBox(width: 30),
                        MyResponsiveButton( isResponsive: true),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
