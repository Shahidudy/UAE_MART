import 'package:emart_app/consts/consts.dart';
// import 'package:emart_app/view/auth_screen/login_screen.dart';
import 'package:get/get.dart';

import '../../common_widget/applogo_widget.dart';
import '../../common_widget/bg_widget.dart';
import '../../common_widget/custom_textfiekd.dart';
import '../../common_widget/our_button.dart';
// import '../../consts/lists.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWodget(),
          10.heightBox,
          "Signup to $appname".text.white.fontFamily(bold).size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(title: name, hint: nameHint),
              customTextField(title: email, hint: emailHint),
              customTextField(title: password, hint: passwordHint),
              customTextField(title: reTypePassword, hint: passwordHint),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: forgetPass.text.make(),
                ),
              ),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                    activeColor: redColor,
                    checkColor: whiteColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    },
                  ),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(
                          fontFamily: regular,
                          color: fontGrey,
                        ),
                      ),
                      TextSpan(
                        text: termsAndCond,
                        style: TextStyle(
                          fontFamily: regular,
                          color: redColor,
                        ),
                      ),
                      TextSpan(
                        text: " & ",
                        style: TextStyle(
                          fontFamily: regular,
                          color: fontGrey,
                        ),
                      ),
                      TextSpan(
                        text: privacyPolicy,
                        style: TextStyle(
                          fontFamily: regular,
                          color: redColor,
                        ),
                      ),
                    ])),
                  )
                ],
              ),
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyHaveAccount.text.color(fontGrey).make(),
                  login.text.color(redColor).fontFamily(bold).make().onTap(() {
                    Get.back();
                  }),
                ],
              ),
            ],
          )
              .box
              .white
              .rounded
              .shadowSm
              .width(context.screenWidth - 70)
              .padding(const EdgeInsets.all(16))
              .make(),
        ],
      )),
    ));
  }
}
