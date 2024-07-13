import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/data/favmodel.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/iteamfav.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/favscoial.dart';

class favsingup extends StatefulWidget {
  const favsingup({
    super.key,
  });

  @override
  State<favsingup> createState() => _FaveState();
}

class _FaveState extends State<favsingup> {
  List<favModel> fav = [
    favModel(image: "Asset/image/path14.png", titel: "Facebook"),
    favModel(image: "Asset/image/Group 1000000934.png", titel: "LinkedIn"),
    favModel(image: "Asset/image/twitter.png", titel: "Twitter")
  ];

  List<bool> isSelected = [false, false, false];

  void _toggleSelection(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: fav.asMap().entries.map((entry) {
        int index = entry.key;
        favModel item = entry.value;
        return Padding(
          padding: const EdgeInsets.only(bottom: 9.0),
          child: GestureDetector(
            onTap: () {
              _toggleSelection(index);
            },
            child: ItemFavhome(
              item: item,
              active: isSelected[index],
            ),
          ),
        );
      }).toList(),
    );
  }
}
