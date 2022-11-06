import 'package:flutter/material.dart';
import 'package:internshipp_demo/Screens/page1/components/product_card.dart';
import 'package:internshipp_demo/size.dart';

import '../../../Models/model.dart';
import '../../page2/page2_screen.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key? key,
    required this.models,
  }) : super(key: key);
  final List<Model> models;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: models.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.693,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => ProductCard(
          model: models[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2Screen(model: models[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
