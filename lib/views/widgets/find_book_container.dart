import 'package:book_donation/utils/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Book category selection widget
class FindBookContainer extends StatelessWidget {
  /// we pass container text, container color and container text color
  /// to extract the widget to follow the DRY principle
  const FindBookContainer({
    Key? key,
    required this.containerText,
    required this.containerColor,
    required this.containerTextColor,
  }) : super(key: key);

  /// text which shows in the middle of the donation or sell widget
  final String containerText;

  /// color of the container
  final Color containerColor;

  /// color of the text which shows up in the middle of the container
  final Color containerTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.14,
      width: displayWidth(context) * 0.42,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(
          containerText,
          style: TextStyle(
              color: containerTextColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
