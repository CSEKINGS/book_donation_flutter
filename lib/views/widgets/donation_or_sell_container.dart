import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationOrSellContainer extends StatelessWidget {
  const DonationOrSellContainer({
    Key key,
    @required this.containerText,
    @required this.containerColor,
    @required this.containerTextColor,
  }) : super(key: key);

  final String containerText;
  final Color containerColor;
  final Color containerTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(20.0)),
      height: 200.0,
      width: 170.0,
      child: Center(
          child: Text(
        containerText,
        style: TextStyle(
            color: containerTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
