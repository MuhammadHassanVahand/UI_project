import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_ui_project/constan/appColors.dart';
import 'package:mini_ui_project/constan/appIcons.dart';
import 'package:mini_ui_project/widget/appLargeText.dart';

class TopContainer extends StatelessWidget {
  final String text;
  final Widget? contant;
  final Icon? icon;
  final SvgPicture? svgPicture;
  final Color backgroundColor;
  const TopContainer(
      {super.key,
      this.icon,
      this.contant,
      this.svgPicture,
      this.text = "Hey Halal",
      this.backgroundColor = const Color(0xff2A4BA0)});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            height: 200,
            color: backgroundColor,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(
                    size: 22,
                    text: text,
                    color: AppColors.black1,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: svgPicture,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AppIcons.bag,
                    ],
                  )
                ],
              ),
              SizedBox(height: 18),
              Container(
                child: contant,
              )
            ]),
          ),
        ],
      ),
    );
  }
}



// Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: TextField(
//                       style: TextStyle(color: AppColors.black1),
//                       decoration: InputDecoration(
//                         hintText: "Search Products or Store",
//                         hintStyle: TextStyle(color: AppColors.black45),
//                         prefixIconColor: AppColors.black1,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         fillColor: AppColors.darkBlue,
//                         filled: true,
//                         prefixIcon: AppIcons.search,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           width: 200,
//                           height: 45,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               AppSmallText(
//                                 text: "Delivery To",
//                                 color: AppColors.black45,
//                               ),
//                               Row(
//                                 children: [
//                                   AppLargeText(
//                                     text: "Green Way 3000,Sylhet",
//                                     color: AppColors.black10,
//                                     size: 14,
//                                   ),
//                                   Icon(
//                                     Icons.arrow_drop_down,
//                                     color: AppColors.black1,
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 100,
//                           height: 45,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               AppSmallText(
//                                 text: "WITHIN",
//                                 color: AppColors.black45,
//                               ),
//                               Row(
//                                 children: [
//                                   AppLargeText(
//                                     text: "1 HOUR",
//                                     color: AppColors.black1,
//                                     size: 14,
//                                   ),
//                                   Icon(
//                                     Icons.arrow_drop_down,
//                                     color: AppColors.black1,
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   )