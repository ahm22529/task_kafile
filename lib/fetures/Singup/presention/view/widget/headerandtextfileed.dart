import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class HeaderAndTextfiled extends StatelessWidget {
  const HeaderAndTextfiled(
      {super.key, required this.titel, required this.widget});

  final String titel;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titel,
          style: AppStyles.stylemeduim12(context)
              .copyWith(color: const Color(0xff696F79)),
        ),
        const SizedBox(
          height: 8,
        ),
        widget
      ],
    );
  }
}
