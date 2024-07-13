import 'package:flutter/material.dart';

class bodycontineriteam extends StatelessWidget {
  const bodycontineriteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("Asset/image/Product pic.png"),
        SizedBox(height: 8),
        Text(
          "Logo Design - Graphic \nDesign Graphic Design",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Image.asset("Asset/image/Star.png"),
            SizedBox(width: 4),
            Text(
              "(4.5)",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xffFFCB31),
              ),
            ),
            SizedBox(width: 8),
            Image.asset("Asset/image/Line 61.png"),
            SizedBox(width: 8),
            Image.asset("Asset/image/ShoppingCartSimple.png"),
            SizedBox(width: 4),
            Text(
              "20",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff828282),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
