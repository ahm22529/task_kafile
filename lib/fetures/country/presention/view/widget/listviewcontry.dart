import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class ListviewContry extends StatelessWidget {
  const ListviewContry({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Countryame(isheader: index == 0);
      },
    );
  }
}

class Countryame extends StatelessWidget {
  const Countryame({super.key, required this.isheader});
  final bool isheader;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffF2F2F2)),
        color: isheader ? Color(0xffF9F9F9) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Country",
              style: AppStyles.stylemeduim12(context)
                  .copyWith(color: isheader ? Color(0xff696F79) : Colors.black),
            ),
            Text(
              "Capital",
              style: AppStyles.stylemeduim12(context)
                  .copyWith(color: isheader ? Color(0xff696F79) : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
