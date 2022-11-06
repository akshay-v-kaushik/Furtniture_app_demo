import 'package:flutter/material.dart';
import 'package:internshipp_demo/Models/model.dart';
import 'package:internshipp_demo/Models/types.dart';
import 'package:internshipp_demo/Screens/page1/components/type.dart';
import 'package:internshipp_demo/constants.dart';
import 'package:internshipp_demo/service/fetchModel.dart';
import 'package:internshipp_demo/service/fetchType.dart';
import 'package:internshipp_demo/size.dart';

import '../../../components/TitleText.dart';
import 'all_products.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.only(
            //       bottom: SizeConfig.defaultSize! * 1.6,
            //       top: SizeConfig.defaultSize! * 1.6),
            //   child: Container(
            //     color: PrimaryColor,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Center(
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(20),
            //             child: Image.asset(
            //               "assets/images/logo.jpg",
            //               width: 120,
            //               height: 80,
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         // CircleAvatar(
            //         //   radius: 45,
            //         //   backgroundImage: AssetImage("assets/images/logo.jpg"),
            //         // ),
            //         Text(
            //           "FURNITURE APP",
            //           style: TextStyle(
            //             color: PrimaryColor,
            //             fontSize: SizeConfig.defaultSize! * 3,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            //),
            Padding(
              padding: EdgeInsets.only(
                  bottom: SizeConfig.defaultSize! * 1.6,
                  left: SizeConfig.defaultSize! * 1.6,
                  right: SizeConfig.defaultSize! * 1.6),
              child: TitleText(title: "Browse Recommended Products"),
            ),
            FutureBuilder(
              future: fetchModel(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Type(
                      model: (snapshot.data as List<Model>),
                    )
                  : Center(child: Image.asset("assets/loading.gif")),
            ),
            Divider(
              height: 5,
              color: PrimaryColor,
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
              child: TitleText(title: "All Products"),
            ),
            FutureBuilder(
              future: fetchModel(),
              builder: (context, snapshot) => snapshot.hasData
                  ? AllProducts(
                      models: (snapshot.data as List<Model>),
                    )
                  : Center(
                      child: Image.asset('assets/loading.gif'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
