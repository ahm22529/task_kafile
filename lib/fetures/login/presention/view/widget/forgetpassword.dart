import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class ForgestPassword extends StatelessWidget {
  const ForgestPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (v) {}),
        Text(
          "Remember me",
          style: AppStyles.stylemeduim12(context)
              .copyWith(color: const Color(0xff696F79)),
        ),
        const Spacer(),
        Text(
          "Forgot Password?",
          style: AppStyles.stylemeduim12(context)
              .copyWith(color: const Color(0xff696F79)),
        ),
      ],
    );
  }
}
