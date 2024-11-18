import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CategoriesWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(gapH7),
                child: SvgPicture.asset(image.toString(),
                height: gapH35,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: gapH10),
        Text(
          title ,
          style: CustomTextStyle.poppins15.copyWith(
            fontSize: gapH7,
            color: Colors.grey,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          subtitle ,
          style: CustomTextStyle.poppins15.copyWith(
            fontSize: gapH5,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
