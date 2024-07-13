import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/data/favmodel.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/iteamfav.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/favscoial.dart';

class Favehome extends StatefulWidget {
  const Favehome({
    super.key,
  });

  @override
  State<Favehome> createState() => _FaveState();
}

class _FaveState extends State<Favehome> {
  List fav = [
    favModel(image: "Asset/image/path14.png", titel: "Facebook"),
    favModel(image: "Asset/image/Group 1000000934.png", titel: "LinkedIn"),
    favModel(image: "Asset/image/twitter.png", titel: "Twitter")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: fav.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 9.0),
          child: ItemFavhome(
            item: item,
            active: true,
          ),
        );
      }).toList(),
    );
  }
}
