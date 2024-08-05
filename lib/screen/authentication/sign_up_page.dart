import 'package:dating2_ui/custom_widgetes/custom_button.dart';
import 'package:dating2_ui/custom_widgetes/custom_text_field.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_controller_page.dart';
import 'package:dating2_ui/screen/like_dislike_page/like_dislike.dart';
import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}
List<String> list1=[];
String ? initVal;
TextEditingController _fullNameController = TextEditingController();
TextEditingController _schoolController = TextEditingController();
TextEditingController _jobController = TextEditingController();
TextEditingController _aboutController = TextEditingController();
class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.arrow_back, color: Colors.black),
              backgroundColor: Colors.white,
              title: Text("Sign Up", style: TextStyle(color: Colors.grey)),
            ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 15),
                child: Text("Create Account", style: TextStyle(
                    fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                    child: Image.asset("assets/camera.png", height: 100, width: 100)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text("Profile Photo"),
              ),
              CustomTextField(
                  controller: _fullNameController,
                  hintText: "Enter your full name",
                  obsecureValue: false,
                  prefixIcon: Icons.account_circle_rounded
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: screenHeight*0.05,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today_outlined, color: Colors.grey),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Select your Birthday", style: TextStyle(color: Colors.black54, fontSize: screenWidth*0.04),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: DropdownButton(
                            iconSize: 30,
                            hint: Text(""),
                            items: list1.map(
                                    (val) => DropdownMenuItem(
                                    value: val,
                                    child: Text(val)
                                )
                            ).toList(),

                            onChanged: (newVal){
                              setState(() {
                                initVal=newVal.toString();
                              });
                            },
                            value: initVal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomTextField(
                  controller: _schoolController,
                  hintText: "Enter your school name",
                  obsecureValue: false,
                  prefixIcon: Icons.school
              ),
              CustomTextField(
                  controller: _jobController,
                  hintText: "Enter your job title",
                  obsecureValue: false,
                  prefixIcon: Icons.business_center_rounded
              ),
              CustomTextField(
                  controller: _aboutController,
                  hintText: "Write about you",
                  obsecureValue: false,
                  prefixIcon: Icons.switch_account
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationController()));
                  },
                    child: CustomButton(btnText: "Sign Up")),
              )
            ],
          )
        )
    );
  }
}
