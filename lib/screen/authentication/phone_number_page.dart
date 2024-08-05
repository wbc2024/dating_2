import 'package:dating2_ui/custom_widgetes/custom_button.dart';
import 'package:dating2_ui/custom_widgetes/custom_text_field.dart';
import 'package:dating2_ui/screen/authentication/verification_code.dart';
import 'package:flutter/material.dart';
class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}
TextEditingController _numberController = TextEditingController();
class _PhoneNumberPageState extends State<PhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back, color: Colors.black),
            backgroundColor: Colors.white,
            title: Text("Phone Number", style: TextStyle(color: Colors.grey)),
          ),
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: Image.asset("assets/call.png", height: 100, width: 100,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Text("Sign in With Phone Number", style: TextStyle(color: Colors.black87,
                      fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60, top: 10),
                  child: Text(" Please enter your phone Number and\n we will send you a SMS verification \n"
                      "                             code",
                      style: TextStyle(color: Colors.grey,
                      fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                ),
                CustomTextField(
                    controller: _numberController,
                    hintText: "Enter Your Phone Number",
                    obsecureValue: false,
                    prefixIcon: Icons.call),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationCodePage()));
                  },
                    child: CustomButton(btnText: "Continue"))
              ],
            ),
          ),
        ));
  }
}
