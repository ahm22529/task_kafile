import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.errmas});
  final String errmas;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/Vector.png"),
        const SizedBox(
          width: 12,
        ),
        Text(
          "Account Login",
          style: AppStyles.stylemeduim18(context),
        ),
      ],
    );
  }
}
