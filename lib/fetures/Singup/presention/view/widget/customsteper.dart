import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/iteamsteper.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/iteamstepertwo.dart';

class customsteper extends StatelessWidget {
  const customsteper({
    super.key,
    required this.active1,
    required this.active12, required this.numer,
  });
  final bool active1, active12;
  final int numer;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Expanded(
          child: Divider(
            color:Colors.green,
            thickness: 2,
          ),
        ),
        Iteamstreper(
          isactive: active1,
        ),
         Expanded(
          child: Divider(
            color:active1?Colors.green: Colors.black,
            thickness: 2,
          ),
        ),
        Iteamstrepertwo(
          isactive: active12,
          number: numer,
        ),
         Expanded(
          child: Divider(
            color:active12?Colors.green: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}



