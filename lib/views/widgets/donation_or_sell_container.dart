import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationOrSellContainer extends StatelessWidget {
  const DonationOrSellContainer({
    Key key,
    this.containerText,
    this.containerColor,
    this.containerTextColor,
  }) : super(key: key);

  final String containerText;
  final Color containerColor;
  final Color containerTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: this.containerColor,
          borderRadius: BorderRadius.circular(20.0)),
      height: 200.0,
      width: 170.0,
      child: Center(
          child: Text(
        this.containerText,
        style: TextStyle(
            color: this.containerTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
