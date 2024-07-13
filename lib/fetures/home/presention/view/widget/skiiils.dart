import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/addskiles.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';
// استيراد شاشة إدخال المهارات

class ContainerWithChiphome extends StatefulWidget {
  const ContainerWithChiphome({
    Key? key,
    required this.maxline,
    required this.skills,
  }) : super(key: key);

  final int maxline;

  final List<String> skills;

  @override
  _ContainerWithChipState createState() => _ContainerWithChipState();
}

class _ContainerWithChipState extends State<ContainerWithChiphome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.skills.length == 0 ? 100 : 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: widget.skills.map((skill) {
          return Chip(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            label: Text(
              skill,
              style: AppStyles.stylemeduim12(context)
                  .copyWith(color: Color(0xff1DBF73)),
            ),
            backgroundColor: Colors.green[50],
            deleteIcon: Image.asset("Asset/image/del.png"),
            onDeleted: () {
              setState(() {});
            },
          );
        }).toList(),
      ),
    );
  }
}
