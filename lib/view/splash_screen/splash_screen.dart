import 'package:flutter/material.dart';
import 'package:flutter_application_8/common/common.dart';
import 'package:flutter_application_8/view/home_screen/home_screen.dart';

class SplashSCreen extends StatelessWidget {
  const SplashSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timerSplash(context);
    });
    return Scaffold(
      backgroundColor: kWhite,
      body: SizedBox(
        child: Center(
          child: Image.asset("assets/images/splash.gif"),
        ),
      ),
    );
  }

  timerSplash(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      )),
    );
  }
}
