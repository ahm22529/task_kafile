
import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/country/presention/view/widget/bodycontry.dart';

class contry extends StatelessWidget {
  const contry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffF2F2F2), width: 1),
      ),
      child: BodyContry(),
    );
  }
}