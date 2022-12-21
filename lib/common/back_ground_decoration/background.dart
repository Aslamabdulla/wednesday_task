import 'package:flutter/material.dart';
import 'package:flutter_application_8/common/back_ground_decoration/widgets/background_clipper.dart';
import 'package:flutter_application_8/common/constants.dart';

class BackgroundDecorationWidget extends StatelessWidget {
  const BackgroundDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        height: height,
        width: width,
        decoration: backgroundGradient,
      ),
    );
  }
}
