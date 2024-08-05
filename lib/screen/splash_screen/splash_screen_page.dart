import 'dart:async';

import 'package:dating2_ui/screen/authentication/sign_up_phone_number.dart';
import 'package:flutter/material.dart';
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(
        builder: (context)=>SignUpWithPhoneNumber())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("assets/love.png", height: 150, width: 150,)
              )
            ],
          ),
        )
    );
  }
}
