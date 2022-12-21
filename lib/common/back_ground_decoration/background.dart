import 'package:flutter/material.dart';
import 'package:flutter_application_8/common/back_ground_decoration/widgets/widget.dart';
import 'package:flutter_application_8/common/constants.dart';
import 'package:get/get.dart';

class BackgroundDecorationWidget extends StatelessWidget {
  const BackgroundDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
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
