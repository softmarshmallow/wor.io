import 'package:flutter/material.dart';
import 'package:words/screens/word_screen.dart';
import 'package:words/utils/routes/routing.dart';
import 'package:words/utils/themes/theme.dart';

const SPLASH_DURATION = const Duration(seconds: 2, milliseconds: 800);

class SplashScreen extends StatefulWidget {
  static const routeName = RouteSpecs.SPLASH_SCREEN;

  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(SPLASH_DURATION, () {
      endSplash();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Stack(
      children: [
        Positioned(
            bottom: ThemeDense.d36,
            left: ThemeDense.d0,
            right: ThemeDense.d0,
            child: Center(
                child: Text(
              "❤ robbin",
              style: Theme.of(context).textTheme.headline6,
            ))),
        Center(
          child: Text(
            "DAY 1",
            style: Theme.of(context).textTheme.headline1,
          ),
        )
      ],
    );
  }

  void endSplash() {
    Navigator.of(context).pushReplacementNamed(WordScreen.routeName);
  }
}