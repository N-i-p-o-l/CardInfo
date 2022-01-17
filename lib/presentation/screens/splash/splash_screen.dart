import 'package:animate_do/animate_do.dart';
import 'package:card_info/common/constants.dart';
import 'package:card_info/common/strings.dart';
import 'package:card_info/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(splashDuration, () {
        context.router.replaceAll(const [InputModeRoute()]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: FadeIn(
            duration: animationDuration,
            child: Text(
              StringConstants.appName,
              style: Theme.of(context)
                .textTheme.headline4?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
