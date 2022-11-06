import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internshipp_demo/Models/model.dart';
import 'package:internshipp_demo/constants.dart';
import 'package:internshipp_demo/size.dart';

class ModelInfo extends StatefulWidget {
  const ModelInfo({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Model model;

  @override
  State<ModelInfo> createState() => _ModelInfoState();
}

class _ModelInfoState extends State<ModelInfo> {
  @override
  Widget build(BuildContext context) {
    TextStyle lightTextStyle = TextStyle(color: TextColor);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
      height: SizeConfig.defaultSize! * 37.5,
      width: SizeConfig.defaultSize! * 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.model.type!.toUpperCase(), style: lightTextStyle),
          SizedBox(height: SizeConfig.defaultSize),
          Text(
            widget.model.title!,
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.4,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2),
          Text("From", style: lightTextStyle),
          Text(
            "\$${widget.model.price}",
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2),
          Text("Available Colors", style: lightTextStyle),
          Row(children: [
            ColorBox(
              color: Color(0xFF7BA275),
              isActive: true,
            ),
            ColorBox(
              color: Color(0xFFD7D7D7),
            ),
            ColorBox(
              color: TextColor,
            ),
          ]),
        ],
      ),
    );
  }

  Container ColorBox({
    required Color color,
    bool isActive = false,
  }) {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.defaultSize!, right: SizeConfig.defaultSize!),
      padding: const EdgeInsets.all(5),
      height: SizeConfig.defaultSize! * 2.4,
      width: SizeConfig.defaultSize! * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}
