import 'package:flutter/material.dart';
import 'package:flutter_application_8/model/model_class.dart';

class LeadingWidget extends StatelessWidget {
  AsyncSnapshot<List<ModelClass>> snapshot;
  final int index;
  LeadingWidget({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Image.network(snapshot.data![index].thumbnailUrl));
  }
}
