import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/home/data/model/checkermodel.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/checker.dart';

class type extends StatelessWidget {
  const type({
    Key? key,
    required this.lis,
    required this.onUserTypeChanged,
  }) : super(key: key);

  final List<Checkermodel> lis;
  final ValueChanged<String> onUserTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: lis.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: checker(
            checkermodel: item,
            onChanged: (value) {
              onUserTypeChanged(item.titel);
            },
          ),
        );
      }).toList(),
    );
  }
}
