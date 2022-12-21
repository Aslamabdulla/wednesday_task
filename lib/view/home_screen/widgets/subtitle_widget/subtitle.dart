import 'package:flutter/material.dart';
import 'package:flutter_application_8/common/constants.dart';
import 'package:flutter_application_8/model/model_class.dart';

class SubTitleWidget extends StatelessWidget {
  AsyncSnapshot<List<ModelClass>> snapshot;
  final int index;
  SubTitleWidget({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Id :- ${snapshot.data![index].id.toString()}"),
        kheight5,
        Text("Album Id :- ${snapshot.data![index].albumId.toString()}"),
      ],
    );
  }
}
