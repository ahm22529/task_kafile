import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/custombuttom.dart';

class ButtomLogIn extends StatelessWidget {
  const ButtomLogIn({
    super.key,
    required this.globalKey,
    this.onPressed,
  });
  final GlobalKey<FormState> globalKey;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          title: 'Login',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
