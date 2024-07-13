import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isExpanded = false,
  });

  final String title;
  final void Function()? onPressed;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    Widget button = TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff1DBF73),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(12), // Adjust the radius as needed
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 8),
        child: Text(
          title,
          style: AppStyles.stylemeduim15(context)
              .copyWith(color: const Color(0xffFFFFFF)),
        ),
      ),
    );

    return isExpanded ? button : Expanded(child: button);
  }
}
