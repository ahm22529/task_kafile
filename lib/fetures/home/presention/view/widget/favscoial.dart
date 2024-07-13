import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/data/favmodel.dart';
import 'package:task_kafile/fetures/home/data/model/checkermodel.dart';
import 'package:task_kafile/fetures/home/presention/view/home.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/checker.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class ItemFavhome extends StatefulWidget {
  final favModel item;
  const ItemFavhome({super.key, required this.item, required this.active});
  final bool active;
  @override
  _ItemFavState createState() => _ItemFavState();
}

class _ItemFavState extends State<ItemFavhome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        checker(
          checkermodel: Checkermodel(check: true, titel: ""),
          onChanged: (bool value) {},
        ),
        const SizedBox(
          width: 2,
        ),
        Image.asset(widget.item.image),
        const SizedBox(
          width: 9,
        ),
        Text(
          widget.item.titel,
          style: AppStyles.stylemeduim14(context),
        )
      ],
    );
  }
}
