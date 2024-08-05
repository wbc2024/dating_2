import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/conversation_details_page/conersation_details.dart';
import 'package:flutter/material.dart';
class MatchProfilePage extends StatefulWidget {
  const MatchProfilePage({Key? key}) : super(key: key);

  @override
  _MatchProfilePageState createState() => _MatchProfilePageState();
}

class _MatchProfilePageState extends State<MatchProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight*3/6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/g2.jpg"), fit: BoxFit.fill
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jennifer, 25", style: TextStyle(
                          fontSize: screenWidth*0.06,
                          fontWeight: FontWeight.bold)),
                      Container(
                        width: screenWidth*0.20,
                        decoration: BoxDecoration(
                            color: AppColor.button,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white,size: 20,),
                              Text("30km", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: AppColor.button, size: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("New York, United state"),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.business_center_rounded, color: AppColor.button, size: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Physical scientist"),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.school, color: AppColor.button, size: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("University of Californiya"),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Bio", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold, color: AppColor.button),),
                      ),
                      Text("Natasha Dalal is an Indian fashion designer who is best known for being the wife "
                          "of Bollywood actor Varun Dhawan. Check this page to read her biography"
                          "Dalal is an Indian fashion designer who is best known for being the wife "
                          "of Bollywood actor Varun Dhawan. Check this page to read her biography",
                      style: TextStyle(color: Colors.grey)),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: FloatingActionButton(
                            isExtended: true,
                            backgroundColor: AppColor.button,
                            child: Icon(Icons.message, color: Colors.white),
                              onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ConversationDetails()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
