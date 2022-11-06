import 'package:flutter/material.dart';
import 'package:internshipp_demo/Models/model.dart';
import 'package:internshipp_demo/Models/types.dart';
import 'package:internshipp_demo/Screens/page1/components/types_card.dart';
import 'package:internshipp_demo/Screens/page2/page2_screen.dart';

class Type extends StatelessWidget {
  const Type({
    Key? key,
    required this.model,
  }) : super(key: key);
  final List<Model> model;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            4,
            (index) => TypesCard(
                models: model[model.length - index - 1],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Page2Screen(
                              model: model[model.length - index - 1])));
                })),
      ),
    );
  }
}
