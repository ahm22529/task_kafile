import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/services/presention/view/widget/listview.dart';

class BodyServices extends StatelessWidget {
  const BodyServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .12,
          ),
          const Text(
            "Services",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * .29,
            child: listviewiteam(),
          ),
          const SizedBox(height: 40),
          const Text(
            "Popular Services",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * .29,
            child: listviewiteam(),
          ),
        ],
      ),
    );
  }
}
