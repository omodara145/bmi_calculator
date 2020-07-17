import 'package:flutter/cupertino.dart';
import 'constants.dart';

const contentSpacing = 15.0;

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 65.0,
        ),
        SizedBox(
          height: contentSpacing,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
