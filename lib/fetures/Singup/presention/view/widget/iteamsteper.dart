import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class Iteamstreper extends StatelessWidget {
  const Iteamstreper({
    super.key,
    required this.isactive,
  });
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height * -.05,
            child: Text(
              "Register",
              style: AppStyles.stylemeduim12(context).copyWith(
                  color: Colors.green,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            )),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: !isactive ? Colors.green : Color(0xffC3C5C8)),
              shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundColor: isactive ? Colors.green : Colors.transparent,
            radius: 15,
            child:
                isactive ? Icon(Icons.check, color: Colors.white) : Text("1"),
          ),
        ),
      ],
    );
  }
}