import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fruits_vegetables/const/fruits_const.dart';
import 'package:flutter_fruits_vegetables/core/text_green_bold.dart';
import 'package:flutter_fruits_vegetables/core/text_medium_bold.dart';
import 'package:flutter_fruits_vegetables/core/text_sm_bold.dart';
import 'package:flutter_fruits_vegetables/core/text_small_bold.dart';
import 'package:flutter_fruits_vegetables/view/fruits_brocoli.dart';

class FruitsHome extends StatelessWidget {
  FruitsHome({super.key});

  final iconList = <IconData>[
    Icons.home,
    Icons.paste,
    Icons.bookmark_border,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_cart),
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: 0,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (p0) {},
          //other params
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _rowAppbar(context),
                FruitConst.sizedBoxHeight20,
                Stack(
                  children: [
                    _containerImage(context),
                    _positionedImage(context),
                    _containerText(),
                    _elevatedButtonContainer(),
                  ],
                ),
                FruitConst.sizedBoxHeight20,
                _rowTwoText(),
                FruitConst.sizedBoxHeight10,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _cardDesignOne(context),
                      _cardDesigntwo(context),
                    ],
                  ),
                ),
                FruitConst.sizedBoxHeight10,
                _rowTwoTextNew(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _cardDesignThree(context),
                      _cardDesignFour(context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Card _cardDesignFour(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: FruitConst.borderRadiusCircular20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset(FruitConst.green_brocoli)),
            TextSmallMedium(
              text: FruitConst.green_broccoli,
            ),
            _textSmallOne(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FruitConst.f_many,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.black),
                ),
                Text(
                  FruitConst.text_price_line,
                  style: TextStyle(
                    color: FruitConst.colorgrey,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 2,
                  ),
                ),
                FruitConst.sizedBoxWidth20,
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FruitsBrocoli()));
                        },
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 35,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _cardDesignThree(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: FruitConst.borderRadiusCircular20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset(FruitConst.potato_f)),
            TextSmallMedium(
              text: FruitConst.potato_title,
            ),
            _textSmallOne(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FruitConst.f_many,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.black),
                ),
                Text(
                  FruitConst.text_price_line,
                  style: TextStyle(
                    color: FruitConst.colorgrey,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 2,
                  ),
                ),
                FruitConst.sizedBoxWidth20,
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 35,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row _rowTwoTextNew() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextMedium(text: FruitConst.new_item),
        TextGreen(text: FruitConst.see_all),
      ],
    );
  }

  Card _cardDesigntwo(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: FruitConst.borderRadiusCircular20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset(FruitConst.tomato_image)),
            TextSmallMedium(
              text: FruitConst.tomatoes_title,
            ),
            _textSmallOne(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FruitConst.f_many,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.black),
                ),
                Text(
                  FruitConst.text_price_line,
                  style: TextStyle(
                    color: FruitConst.colorgrey,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 2,
                  ),
                ),
                FruitConst.sizedBoxWidth20,
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 35,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _cardDesignOne(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: FruitConst.borderRadiusCircular20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset(
                FruitConst.marul_one,
              ),
            ),
            _textSmallMediumOne(),
            _textSmallOne(),
            _rowFruits(context),
          ],
        ),
      ),
    );
  }

  Row _rowFruits(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          FruitConst.f_many,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black),
        ),
        Text(
          FruitConst.text_price_line,
          style: TextStyle(
            color: FruitConst.colorgrey,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
        FruitConst.sizedBoxWidth20,
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.green,
                  size: 35,
                )),
          ],
        ),
      ],
    );
  }

  TextSmall _textSmallOne() {
    return TextSmall(
      text: FruitConst.kg_m,
    );
  }

  TextSmallMedium _textSmallMediumOne() {
    return TextSmallMedium(
      text: FruitConst.marul_title,
    );
  }

  Row _rowTwoText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextMedium(text: FruitConst.home_title),
        TextGreen(text: FruitConst.see_all),
      ],
    );
  }

  Positioned _elevatedButtonContainer() {
    return Positioned(
      top: 100,
      left: 20,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
          onPressed: () {},
          child: Text(FruitConst.container_elv_text)),
    );
  }

  Padding _containerText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: TextMedium(
        text: FruitConst.container_title,
      ),
    );
  }

  Container _containerImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: FruitConst.borderRadiusCircular20,
        color: Color.fromARGB(255, 182, 245, 184),
      ),
    );
  }

  Positioned _positionedImage(BuildContext context) {
    return Positioned(
      top: 10,
      right: 5,
      child: Image.asset(
        FruitConst.fruitss_image,
        height: MediaQuery.of(context).size.height / 5,
        //width: MediaQuery.of(context).size.width
      ),
    );
  }

  Row _rowAppbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 40,
                )),
            FruitConst.sizedBoxWidth20,
            Text(
              'Location',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 40,
                )),
          ],
        )
      ],
    );
  }
}
