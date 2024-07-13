import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/formcomplete.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/customappbar.dart';

class Compelte extends StatelessWidget {
  const Compelte({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            
            Image.asset("Asset/image/Group 1000001077 (1).png"),
            const SizedBox(
              height: 16,
            ),
            FormComplet(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
