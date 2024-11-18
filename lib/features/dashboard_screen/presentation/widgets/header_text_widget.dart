import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/cupertino.dart';

class CustomHeaderTexts extends StatelessWidget {
  final String nameText;
  final String discriptionText;

  const CustomHeaderTexts({
    Key? key,
    required this.nameText,
    required this.discriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nameText,
          style: CustomTextStyle.poppins15.copyWith(
            fontSize: gapH20,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: gapH18),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: gapH18),
          child: Text(
            discriptionText,
            textAlign: TextAlign.center,
            style: CustomTextStyle.poppins15.copyWith(
              fontSize: gapH13,
              fontWeight: FontWeight.w300,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
