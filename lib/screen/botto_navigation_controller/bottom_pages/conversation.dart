import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/conversation_details_page/conersation_details.dart';
import 'package:dating2_ui/screen/notification/notification_page.dart';
import 'package:flutter/material.dart';
class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);
  @override
  _ConversationPageState createState() => _ConversationPageState();
}
class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child:
                        Image.asset("assets/love.png", height: 40, width: 40)),
                    Text("Conversation",
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
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
                Expanded(child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ConversationDetails()));
                          },
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                            image: AssetImage("assets/g2.jpg"), fit: BoxFit.cover),
                                        color: Colors.deepOrangeAccent,
                                        borderRadius: BorderRadius.circular(360)),
                                    height: screenHeight*0.07,
                                    width: screenWidth*0.15),
                                SizedBox(width: screenWidth*0.02),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Jennifer", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                                      SizedBox(height: screenWidth*0.01),
                                      Text("Curabitur vulputate arcu odio", style: TextStyle(fontSize: screenWidth*0.03)),
                                      SizedBox(height: screenWidth*0.01),
                                      Text("29 minutes ago", style: TextStyle(fontSize: screenWidth*0.03)),
                                    ]),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.button,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  height: screenHeight*0.05,
                                  width: screenWidth*0.15,
                                  child: Center(
                                    child: Text("New", style: TextStyle(color: Colors.white)),
                                  ),
                                )
                              ]
                              ),
                              SizedBox(height: screenHeight*0.01,),
                              Divider(),

                            ],
                          ),
                        ),
                      );
                    }),
                )
              ],
            ),
          ),
        ));
  }
}
