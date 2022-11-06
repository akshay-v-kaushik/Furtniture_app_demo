import 'package:flutter/material.dart';
import 'package:internshipp_demo/Models/model.dart';
import 'package:internshipp_demo/components/TitleText.dart';
import 'package:internshipp_demo/constants.dart';
import 'package:internshipp_demo/size.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.model,
    required this.press,
  }) : super(key: key);

  final Model? model;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5, //145
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: model!.id!,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/loadinggif.gif",
                    image: model!.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: model!.title),
              ),
              SizedBox(height: defaultSize / 2),
              Text("\$${model!.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
