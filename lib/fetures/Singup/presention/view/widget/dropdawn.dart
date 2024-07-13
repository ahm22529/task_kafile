import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({super.key});

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedValue,
      items: <String>['Buyer', 'Seller', 'Both']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Fill the required fields";
        }
        return null;
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
