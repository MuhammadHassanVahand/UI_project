import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_ui_project/constan/appColors.dart';
import 'package:mini_ui_project/widget/appLargeText.dart';
import 'package:mini_ui_project/widget/appSmallText.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 280,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.orange,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 90,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/Image Icon.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSmallText(
                      text: "Get",
                      size: 30,
                      fontWeight: FontWeight.w100,
                    ),
                    AppLargeText(text: "50% OFF", color: AppColors.black1),
                    AppSmallText(
                      text: "On first 03 orders",
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
