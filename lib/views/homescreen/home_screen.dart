import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      color: lightGrey,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textFieldGrey,
                  ),
                ),
              ),
            ),
            //Swiper brands
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Image.asset(sliderList[index], fit: BoxFit.fill)
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            )
          ],
        ),
      ),
    );
  }
}
