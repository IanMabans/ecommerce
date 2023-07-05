import 'package:emart_app/consts/consts.dart';

Widget detailsCard ({width, String? count, String? title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "0.0".text.fontFamily(bold).color(fontGrey).size(16).make(),
      5.heightBox,
      "In your cart".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .padding(EdgeInsets.all(4))
      .height(60)
      .make();
}