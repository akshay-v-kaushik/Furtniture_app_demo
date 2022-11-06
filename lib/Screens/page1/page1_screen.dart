import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internshipp_demo/Screens/page1/components/body.dart';
import 'package:internshipp_demo/constants.dart';

import '../../size.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: false,
            flexibleSpace: //
                FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bgimage.png"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken)),
                  ),
                ),
              ),
              // background: Image.asset(
              //   "assets/images/bgimage.png",
              //   fit: BoxFit.cover,
              // ),
              title: Text('FURNITURE APP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              centerTitle: true,
            ),
            // background: Container(

            //   decoration: BoxDecoration(

            //     image: DecorationImage(

            //       image: AssetImage("assets/images/bgimage.png"),
            //       fit: BoxFit.scaleDown,
            //       colorFilter: ColorFilter.mode(
            //           Colors.black.withOpacity(0.8), BlendMode.dstATop),
            //     ),
            //   ),
            // ),
            backgroundColor: PrimaryColor,

            // leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //   // Text(
            //   //   'Furniture App',
            //   // ),
            //   Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: Container(
            //       color: PrimaryColor,
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(40),
            //         child: Image.asset(
            //           "assets/images/logo.jpg",
            //           height: 60,
            //           width: 80,
            //           fit: BoxFit.contain,
            //         ),
            //       ),
            //     ),
            //   ),
            // ]),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ],
        body: Body(),
      ),
      //   body: NestedScrollView(
      //     headerSliverBuilder: (context, innerBoxIsScrolled) => [
      //       SliverAppBar(
      //         title: Text(
      //           "Furniture App",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 25,
      //           ),
      //         ),
      //         centerTitle: true,
      //       ),
      //     ],
      //     body: Body(),
      //   ),
      // );
      // appBar: AppBar(
      //   toolbarHeight: 50,
      //   centerTitle: true,
      //   // actions: [
      //   //   Icon(icon)
      //   // Container(
      //   //   color: PrimaryColor,
      //   //   child: ClipRRect(
      //   //     borderRadius: BorderRadius.circular(40),
      //   //     child: Image.asset(
      //   //       "assets/images/logo.jpg",
      //   //       height: 60,
      //   //       width: 100,
      //   //       fit: BoxFit.cover,
      //   //     ),
      //   //   ),

      //   //     CircleAvatar(
      //   //   radius: 30,
      //   //   backgroundImage: AssetImage("assets/images/logo.jpg"),
      //   //),
      //   //],
      //   title: Text(
      //     "Furniture App",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 25,
      //     ),
      //   ),

      //   backgroundColor: PrimaryColor,
      //   elevation: 22,
      //   shadowColor: shadowColor,
      //   brightness: Brightness.dark,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //       bottomLeft: Radius.circular(30),
      //       bottomRight: Radius.circular(30),
      //     ),
      //   ),
      // ),
      // body: Body(),
    );
  }
}
