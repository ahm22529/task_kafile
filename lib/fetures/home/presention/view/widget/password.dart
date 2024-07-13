import 'package:flutter/material.dart';

class Displaypass extends StatelessWidget {
  const Displaypass({
    super.key,
    required this.maxLines,
    required this.text,
    required this.image,
    required this.obscureText,
  });

  final int maxLines;
  final String text, image;
  final bool obscureText;

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
          obscureText: obscureText,
          initialValue: text,
          maxLines: maxLines,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: Image.asset(image),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
