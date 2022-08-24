 import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:untitled6/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {

    return
          EasySplashScreen(
          logo: Image.asset("image/download.png",
          ),
          title: Text('Splash Screen'),
          loaderColor: Colors.blue,
            loadingText: Text('Loading...'),
            durationInSeconds: 5,
            navigator: MyApp(),


    );
  }
}
