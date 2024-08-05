import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_controller_page.dart';
import 'package:dating2_ui/screen/home_page/my_home_page.dart';
import 'package:dating2_ui/screen/notification/notification_page.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  Text("Create post",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ))
                ],
              ),
              Divider(thickness: 2),
              Row(children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/g2.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(360)),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.15),
                SizedBox(width: screenWidth * 0.02),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Riya Islam",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: screenWidth * 0.01),
                  Container(
                    height: screenHeight*0.03,
                    width: screenWidth*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.public, size: 17,color: Colors.grey),
                        Text("Public",
                            style: TextStyle(fontSize: screenWidth * 0.03, fontWeight: FontWeight.bold
                            , color: Colors.grey)),
                      ],
                    ),
                  ),
                ]),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        BottomNavigationController()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                      child: Text("Post",
                          style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold
                              , color: Colors.blue)),
                    ),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(top:15, bottom: 170),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                      hintText: "What's on your mind?",
                  ),
                ),
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.photo, color: Colors.blue,),
                  ),
                  Text("Photo"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.person_add_alt, color: Colors.green),
                  ),
                  Text("Tag people"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.tag_faces, color: Colors.blue,),
                  ),
                  Text("Feeling/activity"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.location_on, color: Colors.red,),
                  ),
                  Text("Check in"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.video_call, color: Colors.blue,),
                  ),
                  Text("Live video"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.color_lens, color: Colors.green,),
                  ),
                  Text("Background color"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.deepOrange,),
                  ),
                  Text("Camera"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.gif, color: Colors.green,),
                  ),
                  Text("GIF"),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.playlist_add_check_outlined, color: Colors.grey,),
                  ),
                  Text("Layout"),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    ));
  }
}
