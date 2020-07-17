import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function gesture;

  AppCard({@required this.color, this.child, this.gesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
