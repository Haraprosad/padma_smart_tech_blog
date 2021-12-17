/*** This extension eliminates the necessity of using context
 * every time to show snackbar.And it helps to customize snackbar
 * easily***/
import 'package:flutter/material.dart';

extension SnackbarX on BuildContext {
  showSnackBar(String text,
      {Color bcgColor = Colors.black,
        Color textColor = Colors.white,
        double size = 16}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Padding(
          padding:const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: size,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: bcgColor,
      ),
    );
  }
}
