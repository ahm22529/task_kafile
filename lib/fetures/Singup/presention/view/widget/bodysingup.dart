import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/customsteper.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/formcomplete.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/singinform.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/customappbar.dart';

class Bodysingup extends StatefulWidget {
  const Bodysingup({super.key});

  @override
  State<Bodysingup> createState() => _BodysingupState();
}

class _BodysingupState extends State<Bodysingup> {
  final PageController _pageController = PageController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _currentPage = 0;
  bool _showErrorMessage = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _showErrorMessage = false;
      });
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      setState(() {
        _showErrorMessage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          const SafeArea(
            child: CustomAppBar(errmas: 'Register'),
          ),
          const SizedBox(height: 70),
          customsteper(
            active12: _currentPage != 1 &&_currentPage != 0,
            active1: _currentPage == 1, numer: _currentPage,
          ),
          const SizedBox(height: 32),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.4,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                CustomSingUopForm(
                  globalKey: _formKey,
                  onPressed: _nextPage,
                ),
                FormComplet(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
