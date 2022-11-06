import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internshipp_demo/Screens/page2/components/product_desc.dart';
import 'package:internshipp_demo/Screens/page2/components/product_info.dart';
import 'package:internshipp_demo/constants.dart';
import 'package:internshipp_demo/size.dart';

import '../../../../Models/model.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.model}) : super(key: key);
  final Model model;
  @override
  Widget build(BuildContext context) {
    TextStyle lightTextStyle = TextStyle(color: Colors.white);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.screenHeight - AppBar().preferredSize.height,
          child: Stack(
            children: <Widget>[
              ModelInfo(model: model),
              Positioned(
                top: SizeConfig.defaultSize! * 37.5,
                left: 0,
                right: 0,
                child: ProductDesc(
                    model: model,
                    press: () {
                      Fluttertoast.showToast(
                          msg: "Goes to the buy page",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(255, 51, 51, 51),
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }),
              ),
              Positioned(
                top: SizeConfig.defaultSize! * 9.5,
                right: -SizeConfig.defaultSize! * 7.5,
                child: Hero(
                  tag: model.id!,
                  child: Image.network(
                    model.image!,
                    fit: BoxFit.cover,
                    height: SizeConfig.defaultSize! * 37.8,
                    width: SizeConfig.defaultSize! * 36.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
