import 'package:flutter/material.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/headerandtextfileed.dart';
import 'package:task_kafile/fetures/home/data/model/checkermodel.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/dispayinfo.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/favsocial.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/lastandfristname.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/password.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/skiiils.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/typecol.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class BodyMain extends StatelessWidget {
  final String selectedUserType;
  final ValueChanged<String> onUserTypeChanged;

  const BodyMain({
    Key? key,
    required this.selectedUserType,
    required this.onUserTypeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .09,
            ),
            Text(
              "Who Am I",
              style: AppStyles.stylemeduim18(context),
            ),
            const SizedBox(
              height: 33,
            ),
            Center(child: Image.asset("Asset/image/Group 1000001077 (1).png")),
            const SizedBox(
              height: 32,
            ),
            const lastfristname(),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
                titel: "Email Address",
                widget: Display(maxLines: 1, text: "mahmoud47@gmail.com")),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
                titel: "password",
                widget: Displaypass(
                  maxLines: 1,
                  text: '01021020',
                  image: "Asset/image/view-hide_svgrepo.com.png",
                  obscureText: true,
                )),
            const SizedBox(
              height: 16,
            ),
            HeaderAndTextfiled(
                titel: "User Type",
                widget: type(
                  lis: [
                    Checkermodel(
                        check: selectedUserType == "seller", titel: "seller"),
                    Checkermodel(
                        check: selectedUserType == "buyer", titel: "buyer"),
                    Checkermodel(
                        check: selectedUserType == "both", titel: "both")
                  ],
                  onUserTypeChanged: onUserTypeChanged,
                )),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
                titel: "About",
                widget: Display(
                    maxLines: 5,
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Odio urna sed velit et sed quis. Enim ut sed. sed quis. Enim ut sed.")),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
                titel: "Salary",
                widget: Display(maxLines: 1, text: "SAR 4500")),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
                titel: "Birth Date",
                widget: Displaypass(
                  maxLines: 1,
                  text: "2000-12-07",
                  image: "Asset/image/calendar_svgrepo.com.png",
                  obscureText: false,
                )),
            const HeaderAndTextfiled(
                titel: "skills",
                widget: ContainerWithChiphome(
                  maxline: 5,
                  skills: ["flutter", "daer"],
                )),
            const SizedBox(
              height: 16,
            ),
            const HeaderAndTextfiled(
              titel: 'Favourite Social Media',
              widget: Favehome(),
            ),
          ],
        ),
      ),
    );
  }
}



