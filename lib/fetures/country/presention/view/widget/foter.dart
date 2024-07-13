import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class Foter extends StatefulWidget {
  @override
  _FoterState createState() => _FoterState();
}

class _FoterState extends State<Foter> {
  int _activeIndex = 1; // Index of the active item

  void _setActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  Widget _buildItem(int index, String text, {bool isNumber = true}) {
    bool isActive = _activeIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => _setActiveIndex(index),
        child: AspectRatio(
          aspectRatio: .95,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2.5),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFE6EAEF)),
              borderRadius: BorderRadius.circular(7),
              color: isActive ? Color(0xFF1DBF73) : Color(0xFFFFFFFF),
            ),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: Center(
              child: Text(
                text,
                style: AppStyles.stylemeduim14(context).copyWith(
                  color: isActive ? Color(0xFF333333) : Color(0xFF333333),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildItem(0, '', isNumber: false),
          _buildItem(1, '1'),
          _buildItem(2, '2'),
          _buildItem(3, '3'),
          _buildItem(4, '...'),
          _buildItem(5, '10'),
          _buildItem(6, '', isNumber: false),
        ],
      ),
    );
  }
}
