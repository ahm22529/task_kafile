import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class Iteamstrepertwo extends StatelessWidget {
  const Iteamstrepertwo({
    super.key,
    required this.isactive,
    required this.number,
  });
  final bool isactive;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height * -.05,
            child: Text(
              "Complete Data",
              style: AppStyles.stylemeduim12(context).copyWith(
                  color: number==1 ? Colors.green : Color(0xffC3C5C8),
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            )),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: number==1  ? Colors.green : Color(0xffC3C5C8)),
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
