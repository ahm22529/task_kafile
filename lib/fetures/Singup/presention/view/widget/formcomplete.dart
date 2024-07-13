import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/custombuttom.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/chlip.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/choosefavsocial.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/datepicker.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/gender.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/headerandtextfileed.dart';
import 'package:task_kafile/fetures/Singup/presention/view/widget/salery.dart';
import 'package:task_kafile/fetures/home/presention/view/home.dart';
import 'package:task_kafile/fetures/home/presention/view/widget/favsocial.dart';
import 'package:task_kafile/fetures/login/presention/view/login.dart';
import 'package:task_kafile/fetures/login/presention/view/widget/emailtextfiled.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class FormComplet extends StatelessWidget {
  GlobalKey<FormState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset("Asset/image/Group 1000001077 (1).png")),
                SizedBox(
                  height: 16,
                ),
                const HeaderAndTextfiled(
                    titel: "About", widget: Textformfiledemail(maxline: 4)),
                const SizedBox(
                  height: 16,
                ),
                const HeaderAndTextfiled(
                    titel: "Title", widget: CustomTextFieldWithControls()),
                const SizedBox(
                  height: 16,
                ),
                const HeaderAndTextfiled(
                    titel: "Date", widget: TextFormFieldWithDatePicker()),
                const SizedBox(
                  height: 16,
                ),
                ChildrenWidget(),
                const SizedBox(
                  height: 16,
                ),
                const ContainerWithChip(
                  maxline: 9,
                  skil: "product",
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Favourite Social Media",
                  style: AppStyles.stylemeduim12(context)
                      .copyWith(color: const Color(0xff696F79)),
                ),
                const SizedBox(
                  height: 16,
                ),
                favsingup(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    CustomButton(
                        title: "Submit",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>MainScreen()));
                        }),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
