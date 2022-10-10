import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fruits_vegetables/const/fruits_const.dart';

class TextSmallMedium extends StatelessWidget {
  const TextSmallMedium({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? FruitConst.stop,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: FruitConst.colorblack, fontWeight: FontWeight.bold),
    );
  }
}
