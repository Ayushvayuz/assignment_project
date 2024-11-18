import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final Color? backgroundColor;
  final double elevation;
  final VoidCallback? onBackPressed;
  final List<IconButton>? actionButtons;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.titleColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0,
    this.onBackPressed,
    this.actionButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      surfaceTintColor: Colors.transparent,
      elevation: elevation,
      leading: onBackPressed == null
          ? Padding(
              padding: const EdgeInsets.only(left: gapH5),
              child: IconButton(
                icon: Icon(CupertinoIcons.arrow_left, color: titleColor),
                onPressed: onBackPressed,
              ),
            )
          : null,
      title: Text(title, style: CustomTextStyle.poppins15),
      centerTitle: true,
      // ignore: prefer_null_aware_operators
      actions: actionButtons != null
          ? actionButtons!.map((button) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 0.0), // Action button padding
                child: button,
              );
            }).toList()
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
