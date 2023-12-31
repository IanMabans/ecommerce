import 'package:emart_app/consts/consts.dart';

import '../../widgets/applogo_widget.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/ourbutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Sign up to $appname"
                    .text
                    .fontFamily(bold)
                    .white
                    .size(22)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: nameHint, title: name),
                    customTextField(hint: emailHint, title: email),
                    customTextField(hint: passwordHint, title: password),
                    customTextField(hint: passwordHint, title: retypePassword),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make()),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.red,
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
                              text: const TextSpan(children: [
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: termsAndCond,
                              style: TextStyle(
                                fontFamily: regular,
                                color: Colors.red,
                              ),
                            ),
                            TextSpan(
                              text: "&",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: regular,
                                color: Colors.red,
                              ),
                            ),
                          ])),
                        )
                      ],
                    ),
                    5.heightBox,
                    ourButton(
                            color: isCheck == true ? orangeColor : lightGrey,
                            title: signup,
                            onPress: () {},
                            textColor: whiteColor)
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    GestureDetector(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: alreadyHaveAccount,
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: login,
                              style: TextStyle(
                                fontFamily: bold,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
