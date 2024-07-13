import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/services/presention/view/widget/bodycontineriteamlistview.dart';

class listviewiteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: iteamlistview(),
        );
      },
    );
  }
}

class iteamlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: bodycontineriteam(),
      ),
    );
  }
}
