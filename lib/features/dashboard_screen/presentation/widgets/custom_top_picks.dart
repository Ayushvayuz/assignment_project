import 'package:assignment_project/Core/custom_appstrings.dart';
import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/material.dart';

class TopPicksWidget extends StatelessWidget {
  final String imagePath;
  final String time;
  final String title;
  final String subtitle;

  const TopPicksWidget({
    Key? key,
    required this.imagePath,
    required this.time,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(gapH11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: gapH8),
                Row(
                  children: [
                    Text(
                      test,
                      style: CustomTextStyle.poppins15.copyWith(
                        fontSize: gapH5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: gapH3),
                      child: Container(
                        height: gapH3,
                        width: gapH3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(gapH100),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: CustomTextStyle.poppins15.copyWith(
                        fontSize: gapH5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  title,
                  style: CustomTextStyle.poppins15.copyWith(
                    fontSize: gapH14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.poppins15.copyWith(
                    fontSize: gapH7,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
