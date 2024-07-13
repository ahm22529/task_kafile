import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/custombuttom.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/dropdawn.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/fristandlastname.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/headerandtextfileed.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/emailtextfiled.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/password.dart';

class CustomSingUopForm extends StatefulWidget {
  const CustomSingUopForm({super.key, required this.onPressed, required this.globalKey});
  final void Function()? onPressed;
  final GlobalKey<FormState> globalKey;
  @override
  State<CustomSingUopForm> createState() => _CustomSingUopFormState();
}

class _CustomSingUopFormState extends State<CustomSingUopForm> {


  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.globalKey,
      child: Column(
        children: [
          FristnameAndlastName(),
          const SizedBox(
            height: 16,
          ),
          const HeaderAndTextfiled(
              titel: "Email Address",
              widget: Textformfiledemail(
                maxline: 1,
              )),
          const SizedBox(
            height: 16,
          ),
          const HeaderAndTextfiled(titel: "password", widget: textfiledinput()),
          const SizedBox(
            height: 16,
          ),
          const HeaderAndTextfiled(
              titel: "Confirm Password", widget: textfiledinput()),
          const SizedBox(
            height: 16,
          ),
          const HeaderAndTextfiled(titel: "User Type", widget: DropdownField()),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                title: "Next",
                onPressed: widget.onPressed,
                isExpanded: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
