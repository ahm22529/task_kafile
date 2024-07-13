import 'package:flutter/material.dart';

class RadioItem extends StatelessWidget {
  final int value;
  final int? groupValue;

  const RadioItem({
    required this.value,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: value == groupValue ? Colors.green : Colors.grey,
          width: 2,
        ),
        color: value == groupValue ? Colors.green : Colors.transparent,
      ),
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value == groupValue ? Colors.green : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
