import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/formcomplete.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/singinform.dart';

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(), // تعطيل التمرير
      children: [
        CustomSingUopForm(onPressed: () {
          // هنا يمكن إضافة أي منطق عند الضغط على زر في نموذج التسجيل
        }, globalKey: GlobalKey(),),
        FormComplet(),
      ],
    );
  }
}
