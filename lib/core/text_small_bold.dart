import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fruits_vegetables/const/fruits_const.dart';

class TextSmall extends StatelessWidget {
  const TextSmall({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text ?? FruitConst.stop,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: FruitConst.colorgrey),
    );
  }
}
