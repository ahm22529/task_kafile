import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/headerandtextfileed.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/dispayinfo.dart';

class lastfristname extends StatelessWidget {
  const lastfristname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: HeaderAndTextfiled(
              titel: "firstname",
              widget: Display(
                maxLines: 1,
                text: 'mohamed',
              )),
        ),
        SizedBox(
          width: 9,
        ),
        Expanded(
          child: HeaderAndTextfiled(
              titel: "lastname",
              widget: Display(
                maxLines: 1,
                text: 'mohamed',
              )),
        ),
      ],
    );
  }
}
