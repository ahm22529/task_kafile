import 'package:flutter/material.dart';

class ChildrenWidget extends StatefulWidget {
  @override
  _ChildrenWidgetState createState() => _ChildrenWidgetState();
}

class _ChildrenWidgetState extends State<ChildrenWidget> {
  bool isMale = true; // Default to male

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isMale = true;
                });
              },
              child: Row(
                children: [
                  Icon(
                    isMale ? Icons.check_box : Icons.check_box_outline_blank,
                    color: isMale ? Colors.blue : null,
                  ),
                  const SizedBox(width: 5),
                  const Text('Male'),
                ],
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  isMale = false;
                });
              },
              child: Row(
                children: [
                  Icon(
                    isMale ? Icons.check_box_outline_blank : Icons.check_box,
                    color: !isMale ? Colors.blue : null,
                  ),
                  const SizedBox(width: 5),
                  const Text('Female'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
