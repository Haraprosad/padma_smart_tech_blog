import 'package:flutter/material.dart';

extension TextS on String {
  Widget toText({TextStyle style = const TextStyle()}) {
    return Text(
      this,
      style: style,
    );
  }
}

extension Nums on String {
  // to int
  int toInt() => int.parse(this.trim());

  //this double
  double toDouble() => double.parse(this.trim());
}

// extension LocalX on String {
//   String translate() => AppLocalizations.of(Get.context).translate(this);
// }
