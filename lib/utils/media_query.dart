import 'package:flutter/material.dart';

/// display size
Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

/// display height
double displayHeight(BuildContext context) {
  return displaySize(context).height;
}

/// display width
double displayWidth(BuildContext context) {
  return displaySize(context).width;
}
