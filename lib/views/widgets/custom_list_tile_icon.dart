import 'package:flutter/material.dart';


/// beautiful custom list tile icon
class CustomListTileIcon extends StatelessWidget {
  /// constructor
  const CustomListTileIcon({
    Key? key,
    required this.tileIcon,
    required this.iconBackgroundColor,
    required this.iconColor,
  }) : super(key: key);

  final IconData tileIcon;
  final Color iconBackgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            color: iconBackgroundColor,
            borderRadius: BorderRadius.circular(20.0)),
        child: Icon(
          tileIcon,
          color: iconColor,
        ));
  }
}
