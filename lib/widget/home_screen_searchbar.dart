import 'package:flutter/material.dart';

import '../constan/appColors.dart';
import '../constan/appIcons.dart';
import 'appLargeText.dart';
import 'appSmallText.dart';

class SearchAndOption extends StatelessWidget {
  const SearchAndOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: AppColors.black1),
          decoration: InputDecoration(
            hintText: "Search Products or Store",
            hintStyle: TextStyle(color: AppColors.black45),
            prefixIconColor: AppColors.black1,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            fillColor: AppColors.darkBlue,
            filled: true,
            prefixIcon: AppIcons.search,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSmallText(
                    text: "Delivery To",
                    color: AppColors.black45,
                  ),
                  Row(
                    children: [
                      AppLargeText(
                        text: "Green Way 3000,Sylhet",
                        color: AppColors.black10,
                        size: 14,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.black1,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSmallText(
                    text: "WITHIN",
                    color: AppColors.black45,
                  ),
                  Row(
                    children: [
                      AppLargeText(
                        text: "1 HOUR",
                        color: AppColors.black1,
                        size: 14,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.black1,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
