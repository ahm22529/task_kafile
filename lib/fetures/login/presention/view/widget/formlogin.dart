import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/emailtextfiled.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/forgetpassword.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/loginbuttom.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/password.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class formlogin extends StatelessWidget {
  const formlogin({
    super.key,
    required this.globalKey,
    required this.onValidate,
  });
  final VoidCallback onValidate;
  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: AppStyles.stylemeduim12(context)
                .copyWith(color: const Color(0xff696F79)),
          ),
          const SizedBox(
            height: 8,
          ),
          const Textformfiledemail(
            maxline: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "password",
            style: AppStyles.stylemeduim12(context)
                .copyWith(color: const Color(0xff696F79)),
          ),
          const SizedBox(
            height: 8,
          ),
          const textfiledinput(),
          const SizedBox(
            height: 10,
          ),
          const ForgestPassword(),
          const SizedBox(
            height: 34,
          ),
          ButtomLogIn(
            onPressed: onValidate,
            globalKey: globalKey,
          ),
        ],
      ),
    );
  }
}
