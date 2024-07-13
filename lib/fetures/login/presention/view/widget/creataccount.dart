import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/Singup.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class creataccount extends StatelessWidget {
  const creataccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account ? ",
          style: AppStyles.stylemeduim14(context),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Singup())),
          child: Text(
            "Register",
            style: AppStyles.stylemeduim14(context)
                .copyWith(color: const Color(0xff1DBF73)),
          ),
        )
      ],
    );
  }
}
