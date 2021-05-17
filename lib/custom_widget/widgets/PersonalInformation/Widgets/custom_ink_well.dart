import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {

  final Function fun;
  final double chilledPadding;
  final double inkPadding;
  final Widget child;

  CustomInkWell({this.fun, this.chilledPadding, this.inkPadding, this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(inkPadding),
      child: Padding(
        padding: EdgeInsets.all(chilledPadding),
        child: child,
      ),
      onTap: fun,
    );
  }
}

