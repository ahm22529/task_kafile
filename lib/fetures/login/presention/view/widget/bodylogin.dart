import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/home/presention/view/home.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/creataccount.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/customappbar.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/formlogin.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({super.key});

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  GlobalKey<FormState> globalKey = GlobalKey();
  bool _showErrorMessage = false;

  void validateForm() {
    if (globalKey.currentState!.validate()) {
      // Form is valid, hide error message if any
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => MainScreen()));
      setState(() {
        _showErrorMessage = false;
      });
    } else {
      // Form is not valid, show error message
      setState(() {
        _showErrorMessage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            const SafeArea(child: CustomAppBar(errmas: 'Register',)),
            const SizedBox(
              height: 32,
            ),
            if (_showErrorMessage)
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFF0ED),
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Image.asset("Asset/image/Info.png"),
                    const Text(
                      ' Fill the required fields',
                      style: TextStyle(color: Color(0xffF56342)),
                    ),
                  ],
                ),
              ),
            Center(child: Image.asset("Asset/image/Login-cuate 1.png")),
            const SizedBox(
              height: 40,
            ),
            formlogin(
              globalKey: globalKey,
              onValidate:
                  validateForm, // Pass the validate function to formlogin
            ),
            const SizedBox(
              height: 24,
            ),
            const creataccount(),
          ],
        ),
      ),
    );
  }
}
