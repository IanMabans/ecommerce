import 'package:emart_app/consts/consts.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(orangeColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontFamily: semibold, color: textFieldGrey),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: orangeColor),
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}
