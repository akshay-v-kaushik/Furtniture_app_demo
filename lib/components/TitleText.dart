import 'package:flutter/material.dart';

import '../size.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    this.title,
    Key? key,
  }) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        fontSize: SizeConfig.defaultSize! * 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
