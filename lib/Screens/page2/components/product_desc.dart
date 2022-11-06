import 'package:flutter/material.dart';
import 'package:internshipp_demo/size.dart';

import '../../../Models/model.dart';
import '../../../constants.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({
    Key? key,
    required this.model,
    required this.press,
  }) : super(key: key);

  final Model model;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: SizeConfig.defaultSize! * 44),
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize! * 9,
        left: SizeConfig.defaultSize! * 2,
        right: SizeConfig.defaultSize! * 2,
      ),
      //height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.defaultSize! * 1.2),
          topRight: Radius.circular(SizeConfig.defaultSize! * 1.2),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //***********WORK ON THIS */
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            model.desc!,
            style: TextStyle(
              color: TextColor.withOpacity(0.7),
              height: 1.5,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 3),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Colors.white,
                backgroundColor: PrimaryColor,
              ),
              onPressed: press,
              child: Text(
                "Buy Now!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize! * 1.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2),
        ],
      ),
    );
  }
}
