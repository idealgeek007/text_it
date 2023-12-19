import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.butonColor,
      required this.buttonText,
      super.key,
      required this.clickAction});

  final Color butonColor;
  final String buttonText;
  final Function() clickAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: butonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: clickAction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Metropolis-Regular',
              fontSize: 24.0,
            ),
            buttonText,
          ),
        ),
      ),
    );
  }
}
