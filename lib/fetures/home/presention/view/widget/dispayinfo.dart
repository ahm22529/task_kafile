import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({
    super.key,
    required this.maxLines,
    required this.text,
  });

  final int maxLines;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.transparent),
      ),
      child: IgnorePointer(
        child: TextFormField(
          initialValue: text,
          maxLines: maxLines,
          readOnly: true,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
