import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/homescreen/home.dart';
import 'package:emart_app/widgets/applogo_widget.dart';
import 'package:emart_app/widgets/bg_widget.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:emart_app/widgets/ourbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "Log in to $appname"
                    .text
                    .fontFamily(bold)
                    .white
                    .size(22)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: emailHint, title: email),
                    customTextField(hint: passwordHint, title: password),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make()),
                    ),
                    5.heightBox,
                    ourButton(
                            color: orangeColor,
                            title: login,
                            onPress: () {
                              Get.to(() =>const Home());
                            },
                            textColor: whiteColor)
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourButton(
                            color: lightGolden,
                            title: signup,
                            onPress: () {
                              Get.to(()=> const SignUp());
                            },
                            textColor: whiteColor)
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    loginWith.text.color(fontGrey).make(),
                    5.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: lightGrey,
                                    radius: 25,
                                    child: Image.asset(socialIconList[index],
                                        width: 30),
                                  ),
                                ))),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 70).shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
