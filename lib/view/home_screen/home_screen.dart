// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_8/common/constants.dart';
import 'package:flutter_application_8/model/model_class.dart';
import 'package:flutter_application_8/services/api/api.dart';
import 'package:flutter_application_8/view/home_screen/widgets/list_tile_home/list_tile.dart';

import '../../common/back_ground_decoration/background.dart';
import '../../common/common.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kAppBarColor,
        elevation: 0,
        title: const Text("HOME"),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          const BackgroundDecorationWidget(),
          SafeArea(
              child: FutureBuilder<List<ModelClass>>(
                  future: ApiCalls().getApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text("Error Occured");
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const Center(
                        child: CupertinoActivityIndicator(
                          radius: 20,
                          color: kBlack,
                        ),
                      );
                    } else if (snapshot.data == null) {
                      return const Center(
                        child: Text("No Data Found"),
                      );
                    } else {
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: boxDecorationHome,
                              child: listTileWidget(snapshot, index),
                            );
                          },
                          separatorBuilder: (context, index) => kheight15,
                          itemCount: snapshot.data?.length ?? 0);
                    }
                  })),
        ],
      ),
    );
  }
}
