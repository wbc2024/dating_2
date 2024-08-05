import 'package:dating2_ui/custom_widgetes/custom_text_field2.dart';
import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/authentication/sign_up_page.dart';
import 'package:flutter/material.dart';
class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  _VerificationCodePageState createState() => _VerificationCodePageState();
}
TextEditingController _firstLetterController = TextEditingController();
TextEditingController _secondLetterController = TextEditingController();
TextEditingController _thirdLetterController = TextEditingController();
TextEditingController _fourLetterController = TextEditingController();
TextEditingController _fiveLetterController = TextEditingController();
TextEditingController _sixLetterController = TextEditingController();
class _VerificationCodePageState extends State<VerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.button,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Center(
                      child: Image.asset("assets/mobile.png", height: 100, width: 100)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Text("Verification Code", style: TextStyle(color: Colors.white,
                      fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Text("Please enter the SMS code sent to your device", style: TextStyle(color: Colors.white,
                      fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Flexible(
                          child: CustomTextFieldTwo(
                              controller: _firstLetterController,
                              obsecureVal: false),
                      ),
                      Flexible(
                          child: CustomTextFieldTwo(
                              controller: _secondLetterController,
                              obsecureVal: false),
                      ),
                      Flexible(
                        child: CustomTextFieldTwo(
                            controller: _thirdLetterController,
                            obsecureVal: false),
                      ),
                      Flexible(
                        child: CustomTextFieldTwo(
                            controller: _fourLetterController,
                            obsecureVal: false),
                      ),
                      Flexible(
                        child: CustomTextFieldTwo(
                            controller: _fiveLetterController,
                            obsecureVal: false),
                      ),
                      Flexible(
                        child: CustomTextFieldTwo(
                            controller: _sixLetterController,
                            obsecureVal: false),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                    child: Container(
                      height: screenHeight*0.05,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("Submit", style: TextStyle(color: AppColor.button, fontSize: screenWidth*0.04,
                        fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
