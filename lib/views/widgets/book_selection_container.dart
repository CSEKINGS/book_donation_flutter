import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookSelectionContainer extends StatelessWidget {
  const BookSelectionContainer({
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
      height: 100.0,
      width: 170.0,
      decoration: BoxDecoration(
          color: this.containerColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(
          this.containerText,
          style: TextStyle(
              color: this.containerTextColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
