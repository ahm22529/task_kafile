import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/data/favmodel.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class ItemFav extends StatefulWidget {
  final favModel item;
  const ItemFav({super.key, required this.item});

  @override
  _ItemFavState createState() => _ItemFavState();
}

class _ItemFavState extends State<ItemFav> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: _active,
          onChanged: (bool? value) {
            setState(() {
              _active = value ?? false;
            });
          },
          activeColor: Colors.green,
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
