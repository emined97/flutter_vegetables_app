import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fruits_vegetables/const/fruits_const.dart';
import 'package:flutter_fruits_vegetables/core/ElevatedButton_height.dart';
import 'package:flutter_fruits_vegetables/core/text_medium_bold.dart';
import 'package:flutter_fruits_vegetables/core/text_small_bold.dart';

class FruitsBrocoli extends StatelessWidget {
  const FruitsBrocoli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _rowIconButton(),
            Image.asset(
              FruitConst.green_brocoli,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
            ),
            FruitConst.sizedBoxHeight20,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textBrocoliTitle(),
                  _rowTextIconButton(context),
                  FruitConst.sizedBoxHeight10,
                  TextMedium(
                    text: FruitConst.brocoli_subtitle,
                  ),
                  FruitConst.sizedBoxHeight10,
                  TextSmall(
                    text: FruitConst.brocoli_context,
                  ),
                  FruitConst.sizedBoxHeight20,
                  TextMedium(
                    text: FruitConst.brocoli_subtitletwo,
                  ),
                  FruitConst.sizedBoxHeight10,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _containerImageOne(context),
                        FruitConst.sizedBoxWidth10,
                        _containerImageTwo(context),
                        FruitConst.sizedBoxWidth10,
                        _containerImageFive(context),
                        FruitConst.sizedBoxWidth10,
                        _containerImageFour(context),
                        FruitConst.sizedBoxWidth10,
                        _containerImageThree(context),
                      ],
                    ),
                  ),
                  FruitConst.sizedBoxHeight10,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _rowFruitsNames(),
                  ),
                  FruitConst.sizedBoxHeight10,
                  ElevatedButtonHeight(
                      text: FruitConst.elevaten_button_two, onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Row _rowFruitsNames() {
    return Row(
      children: [
        TextSmall(text: FruitConst.tomatoes_title),
        FruitConst.sizedBoxWidth10,
        TextSmall(
          text: FruitConst.banana_name,
        ),
        FruitConst.sizedBoxWidth30,
        TextSmall(
          text: FruitConst.grape_name,
        ),
        FruitConst.sizedBoxWidth20,
        TextSmall(
          text: FruitConst.potato_title,
        ),
        FruitConst.sizedBoxWidth10,
        TextSmall(
          text: FruitConst.green_broccoli,
        ),
      ],
    );
  }

  Container _containerImageFive(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 188, 237, 190),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        FruitConst.m_uzum,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Container _containerImageFour(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 188, 237, 190),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        FruitConst.potato_f,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Container _containerImageThree(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 188, 237, 190),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        FruitConst.green_brocoli,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Container _containerImageTwo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 188, 237, 190),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        FruitConst.banana_f,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Container _containerImageOne(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 188, 237, 190),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        FruitConst.tomato_image,
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Row _rowTextIconButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              FruitConst.f_many,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black),
            ),
            FruitConst.sizedBoxWidth10,
            Text(
              FruitConst.text_price_line,
              style: TextStyle(
                color: FruitConst.colorgrey,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: FruitConst.borderRadiusCircular50,
                  color: FruitConst.colorgreentwo),
              child: Icon(
                Icons.remove,
                color: FruitConst.colorwhite,
              ),
            ),
            FruitConst.sizedBoxWidth10,
            Text(
              '1 kg',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.black),
            ),
            FruitConst.sizedBoxWidth10,
            Container(
              decoration: BoxDecoration(
                  borderRadius: FruitConst.borderRadiusCircular50,
                  color: FruitConst.colorgreen),
              child: Icon(
                Icons.add,
                color: FruitConst.colorwhite,
              ),
            ),
          ],
        ),
      ],
    );
  }

  TextMedium _textBrocoliTitle() {
    return TextMedium(
      text: FruitConst.green_broccoli,
    );
  }

  Row _rowIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_left_outlined,
              size: 40,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 35,
            )),
      ],
    );
  }
}
