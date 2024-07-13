import 'package:flutter/material.dart';

// ignore: camel_case_types
class textfiledinput extends StatelessWidget {
  const textfiledinput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v) {
        if (v!.isEmpty) {
          return "";
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        fillColor: const Color(0xffFFFFFF),
        suffixIcon: Image.asset("Asset/image/view-hide_svgrepo.com.png"),
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
