import 'package:flutter/material.dart';

class Textformfiledemail extends StatelessWidget {
  const Textformfiledemail({
    super.key,
    required this.maxline,
  });
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      validator: (v) {
        if (v!.isEmpty) {
          return "  ";
        }
        return null; // Ensure a null return when the input is valid
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
