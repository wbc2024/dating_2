import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/conversation_details_page/conersation_details.dart';
import 'package:flutter/material.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);
  @override
  _NotificationPageState createState() => _NotificationPageState();
}
class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     },
                       child: Icon(Icons.arrow_back)),
                    Text("Notifications(5)",
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.notifications, color: Colors.grey)
                  ],
                ),
                Divider(thickness: 2),
                Expanded(child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(10),
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
                            ]
                            ),
                            SizedBox(height: screenHeight*0.01,),
                            Divider(),

                          ],
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
