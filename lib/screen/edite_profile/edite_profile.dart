import 'package:dating2_ui/custom_widgetes/custom_text_field.dart';
import 'package:dating2_ui/helper/all_color.dart';
import 'package:flutter/material.dart';
class EditeProfile extends StatefulWidget {
  const EditeProfile({Key? key}) : super(key: key);

  @override
  _EditeProfileState createState() => _EditeProfileState();
}
TextEditingController _schooleNameController = TextEditingController();
TextEditingController _jobNameController = TextEditingController();
TextEditingController _aboutController = TextEditingController();
class _EditeProfileState extends State<EditeProfile> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child:
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.arrow_back)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Edit Profile",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                    image: AssetImage("assets/g2.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(360)),
                            height: screenHeight * 0.11,
                            width: screenWidth * 0.23),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text("Profile Photo", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text("Gallery",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                            color: AppColor.grey_textFiled,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Center(child: Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 35,)),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(Icons.add_circle, color: AppColor.button,size: 30,),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                      controller: _aboutController,
                      hintText: "About you",
                      obsecureValue: false,
                      prefixIcon: Icons.info_outline
                  ),
                  CustomTextField(
                      controller: _schooleNameController,
                      hintText: "Enter your school name",
                      obsecureValue: false,
                      prefixIcon: Icons.school
                  ),
                  CustomTextField(
                      controller: _jobNameController,
                      hintText: "Enter your job title",
                      obsecureValue: false,
                      prefixIcon: Icons.business_center_rounded
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: AppColor.button,
                        child: Icon(Icons.check),
                          onPressed: (){

                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
