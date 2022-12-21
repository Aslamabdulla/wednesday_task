import 'package:flutter/material.dart';
import 'package:flutter_application_8/model/model_class.dart';
import 'package:flutter_application_8/view/home_screen/widgets/leading_widget/leading_widget.dart';
import 'package:flutter_application_8/view/home_screen/widgets/subtitle_widget/subtitle.dart';

ListTile listTileWidget(AsyncSnapshot<List<ModelClass>> snapshot, int index) {
  return ListTile(
    title: Text(
      snapshot.data![index].title,
      maxLines: 1,
    ),
    subtitle: SubTitleWidget(
      index: index,
      snapshot: snapshot,
    ),
    // ignore: prefer_const_constructors
    leading: LeadingWidget(index: index, snapshot: snapshot),
  );
}
