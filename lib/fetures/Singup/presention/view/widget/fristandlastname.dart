import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/headerandtextfileed.dart';

import '../../../../login/presention/view/widget/emailtextfiled.dart';

class FristnameAndlastName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: HeaderAndTextfiled(
          titel: "Frist name",
          widget: Textformfiledemail(
            maxline: 1,
          ),
        )),
        SizedBox(
          width: 9,
        ),
        Expanded(
            child: HeaderAndTextfiled(
          titel: "lastname",
          widget: Textformfiledemail(
            maxline: 1,
          ),
        )),
      ],
    );
  }
}
