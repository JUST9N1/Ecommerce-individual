import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';

import '../../consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey)),
              )),

          // swipers brands
          VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: ((context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fill,
                ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
              })),

              10.heightBox,
              //deals buttons
              Row(
                children: List.generate(2, (index) => homeButtons()),
              )

        ],
      )),
    );
  }
}
