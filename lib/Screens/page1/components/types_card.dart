import 'package:flutter/material.dart';
import 'package:internshipp_demo/Models/model.dart';
import 'package:internshipp_demo/components/TitleText.dart';
import 'package:internshipp_demo/size.dart';

import '../../../Models/types.dart';
import '../../../constants.dart';

class TypesCard extends StatelessWidget {
  const TypesCard({
    Key? key,
    required this.press,
    required this.models,
  }) : super(key: key);
  final Model models;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
        child: SizedBox(
          width: SizeConfig.defaultSize! * 19,
          child: AspectRatio(
            aspectRatio: 0.83,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                ClipPath(
                  clipper: TypeCustom(),
                  child: AspectRatio(
                    aspectRatio: 1.025,
                    child: Container(
                      color: bgColor,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TitleText(
                              title: models.title,
                            ),
                            SizedBox(height: SizeConfig.defaultSize),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                "\$${models.price}",
                                style: TextStyle(
                                  color: TextColor.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/loadinggif.gif",
                      image: models.image.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TypeCustom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornersize = 30;
    path.lineTo(0, height - cornersize);
    path.quadraticBezierTo(0, height, cornersize, height);
    path.lineTo(width - cornersize, height);
    path.quadraticBezierTo(width, height, width, height - cornersize);
    path.lineTo(width, cornersize);
    path.quadraticBezierTo(width, 0, width - cornersize, 0);
    path.lineTo(cornersize, cornersize * 0.75);
    path.quadraticBezierTo(0, cornersize, 0, cornersize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
