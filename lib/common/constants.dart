import 'package:flutter/material.dart';
import 'package:flutter_application_8/common/common.dart';

const backgroundGradient = BoxDecoration(
  shape: BoxShape.rectangle,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(43, 154, 184, 1),
    Color.fromRGBO(60, 174, 200, .2)
  ], stops: [
    0,
    .7
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
);
const kheight5 = SizedBox(
  height: 5,
);
const kheight10 = SizedBox(
  height: 10,
);
const kheight15 = SizedBox(
  height: 15,
);
final boxDecorationHome = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: kWhite,
  boxShadow: [
    BoxShadow(
        color: Colors.grey.withOpacity(.25), //New
        blurRadius: 5.0,
        spreadRadius: 0)
  ],
);
