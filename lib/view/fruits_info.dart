import 'package:flutter/material.dart';
import 'package:flutter_fruits_vegetables/const/fruits_const.dart';
import 'package:flutter_fruits_vegetables/core/ElevatedButton_height.dart';
import 'package:flutter_fruits_vegetables/core/text_small_bold.dart';
import 'package:flutter_fruits_vegetables/view/fruits_home.dart';

class FruitsInfo extends StatelessWidget {
  const FruitsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FruitConst.colorwhite,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Color.fromARGB(255, 148, 237, 151),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 170,
            ),
            child: Column(
              children: [
                _imagetomato(),
                FruitConst.sizedBoxHeight60,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _textTitle(context),
                    FruitConst.sizedBoxHeight20,
                    _textInfoContext(),
                    FruitConst.sizedBoxHeight60,
                  ],
                ),
                ElevatedButtonHeight(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FruitsHome()));
                    },
                    text: FruitConst.elevated_buton),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextSmall _textInfoContext() {
    return TextSmall(
      text: FruitConst.text_info_context,
    );
  }

  Image _imagetomato() {
    return Image.asset(
      FruitConst.tomato_image,
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      FruitConst.text_title,
      style:
          Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black),
    );
  }
}
