import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../home/tabHomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getMyMusicScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 19, 50),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets10.lottiefiles.com/private_files/lf30_fjln45y5.json',
              height: 170),
          SizedBox(
            height: 15,
          ),
          Text(
            'Asset PLayer',
            style: TextStyle(
                color: Color.fromARGB(242, 128, 69, 168),
                fontWeight: FontWeight.w900,
                fontSize: 35),
          )
        ],
      )),
    );
  }

  Future<void> getMyMusicScreen() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TabHomeScreen()));
  }
}
