import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,
    {required String title,
    required List<Widget> actions,
    required Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    elevation: 0,
    title: Text(title),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
