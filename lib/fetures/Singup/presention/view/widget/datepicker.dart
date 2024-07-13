import 'package:flutter/material.dart';

class TextFormFieldWithDatePicker extends StatefulWidget {
  const TextFormFieldWithDatePicker({Key? key}) : super(key: key);

  @override
  _TextFormFieldWithDatePickerState createState() =>
      _TextFormFieldWithDatePickerState();
}

class _TextFormFieldWithDatePickerState
    extends State<TextFormFieldWithDatePicker> {
  DateTime? _selectedDate;
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text =
            '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _controller,
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
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ),
          ),
        ),
      ],
    );
  }
}
