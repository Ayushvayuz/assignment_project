import 'package:assignment_project/Core/custom_appstrings.dart';
import 'package:assignment_project/Core/custom_colors.dart';
import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/material.dart';

class RecentlyTakenWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String tests;

  const RecentlyTakenWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.tests,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.lightBlue8f,
              ),
              borderRadius: BorderRadius.circular(gapH100),
            ),
            child: CircleAvatar(
              radius: gapH35,
              backgroundImage: AssetImage(
                imagePath,
              ),
            ),
          ),
          Text(
            title,
            style: CustomTextStyle.poppins15.copyWith(fontSize: gapH14),
          ),
          Text(
            tests,
            style: CustomTextStyle.poppins15.copyWith(fontSize: gapH14),
          ),
          const SizedBox(
            height: gapH10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(gapH20),
              color: Colors.indigo,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: gapH9,
                right: gapH9,
                top: gapH5,
                bottom: gapH5,
              ),
              child: Text(
                result,
                style: CustomTextStyle.poppins15.copyWith(
                  color: CustomColors.whiteColor,
                  fontSize: gapH10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
