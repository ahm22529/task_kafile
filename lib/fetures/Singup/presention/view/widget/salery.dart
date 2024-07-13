import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class CustomTextFieldWithControls extends StatefulWidget {
  const CustomTextFieldWithControls({
    super.key,
  });

  @override
  _CustomTextFieldWithControlsState createState() =>
      _CustomTextFieldWithControlsState();
}

class _CustomTextFieldWithControlsState
    extends State<CustomTextFieldWithControls> {
  int _currentValue = 1000;

  void _incrementValue() {
    setState(() {
      _currentValue += 1000;
    });
  }

  void _decrementValue() {
    setState(() {
      if (_currentValue > 1000) {
        _currentValue -= 1000;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        suffixIcon: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Image.asset("Asset/image/Group 34402.png"),
                onPressed: _decrementValue,
              ),
              SizedBox(width: 8), // Space between icons and text
              Text(
                'SAR $_currentValue',
                style: AppStyles.stylemeduim16(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 8), // Space between text and icon
              IconButton(
                icon: Image.asset("Asset/image/Group 34401.png"),
                onPressed: _incrementValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
