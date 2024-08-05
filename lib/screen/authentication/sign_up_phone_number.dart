import 'package:dating2_ui/custom_widgetes/custom_button.dart';
import 'package:dating2_ui/screen/authentication/phone_number_page.dart';
import 'package:flutter/material.dart';
class SignUpWithPhoneNumber extends StatefulWidget {
  const SignUpWithPhoneNumber({Key? key}) : super(key: key);

  @override
  _SignUpWithPhoneNumberState createState() => _SignUpWithPhoneNumberState();
}

class _SignUpWithPhoneNumberState extends State<SignUpWithPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xff141414),
                      Color(0xFFE90452),
                    ],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter),
              image: DecorationImage(
                 opacity: 150,
                image: AssetImage("assets/g1.jpg")
              )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: Image.asset("assets/love.png", height: 140, width: 140,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, bottom: 10),
                  child: Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: screenWidth*0.04)),
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Text("Match with people around you", style: TextStyle(color: Colors.white, fontSize: screenWidth*0.04)),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneNumberPage()));
                  },
                    child: CustomButton(btnText: "Sign in With Phone Number")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("Or", style: TextStyle(color: Colors.white, fontSize: screenWidth*0.04)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("Sign in with social apps", style: TextStyle(color: Colors.white, fontSize: screenWidth*0.04)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/f.png", height: 50, width:50),
                      Image.asset("assets/google.png", height: 50, width: 50),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
