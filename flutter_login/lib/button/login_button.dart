import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  LoginButton({required this.image, required this.text, required this.color, required this.radius, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: image
            ),
          ],
        ),
        color: color,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}