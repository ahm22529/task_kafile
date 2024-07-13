import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/country/presention/view/country.dart';
import 'package:task_kafile/fetures/country/presention/view/widget/foter.dart';
import 'package:task_kafile/fetures/country/presention/view/widget/listviewcontry.dart';

class BodyContry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical:50),
      child: Column(
        children: [
          Expanded(
            
            child: ListviewContry(),
          ),
          Expanded(child: Foter()),
        ],
      ),
    );
  }
}