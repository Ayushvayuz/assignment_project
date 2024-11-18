import 'package:assignment_project/Core/custom_colors.dart';
import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const RecentWidget({
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.indigo,
      ),
      child: Padding(
        padding: const EdgeInsets.all(gapH10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: gapH5, left: 7),
                  child: Text(
                    title ?? "",
                    textAlign: TextAlign.start,
                    style: CustomTextStyle.poppins15.copyWith(
                      fontSize: gapH16,
                      color: CustomColors.whiteColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: gapH7, top: 2),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.lightbulb,
                        size: gapH13,
                        color: Colors.white,
                      ),
                      const SizedBox(width: gapH7),
                      Text(
                        subTitle ?? "",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyle.poppins15.copyWith(
                          fontSize: gapH12,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CircularPercentIndicator(
              radius: 25.0,
              lineWidth: 10.0,
              animation: true,
              progressColor: Colors.indigo.shade300,
              percent: 0.7,
              center: const Text(
                "65.0%",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: gapH7,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
