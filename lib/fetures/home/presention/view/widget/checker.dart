import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/home/data/model/checkermodel.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class checker extends StatelessWidget {
  final Checkermodel checkermodel;
  final ValueChanged<bool> onChanged;

  const checker({
    Key? key,
    required this.checkermodel,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<bool>(
          activeColor: Colors.green,
          value: true,
          groupValue: checkermodel.check,
          onChanged: (bool? value) {
            if (value != null) {}
          },
        ),
        Text(
          checkermodel.titel,
          style: AppStyles.stylemeduim14(context),
        ),
      ],
    );
  }
}
