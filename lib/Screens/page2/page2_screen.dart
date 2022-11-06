import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internshipp_demo/Screens/page2/components/body.dart';
import 'package:internshipp_demo/constants.dart';

import '../../../Models/model.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key, required this.model}) : super(key: key);
  final Model model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: NestedScrollView(
      //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
      //     SliverAppBar(
      //       leading: IconButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
      //       ),

      //     ),
      //   ],
      //   body: Body(model: model),
      // ),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('PRODUCT DETAILS',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: "Helvetica")),
        backgroundColor: PrimaryColor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
        ),
      ),
      body: Body(model: model),
    );
  }
}
