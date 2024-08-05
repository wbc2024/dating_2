import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/botto_navigation_controller/bottom_pages/status.dart';
import 'package:dating2_ui/screen/notification/notification_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
TextEditingController _statusController = TextEditingController();
TextEditingController _commentController= TextEditingController();
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
           body: NestedScrollView(
             scrollDirection: Axis.vertical,
             physics: NeverScrollableScrollPhysics(),
             headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
               return <Widget>[
                 SliverList(
                   delegate: SliverChildListDelegate(
                       [
                         Container(
                             height: screenHeight*0.45,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Center(
                                         child:
                                         Image.asset("assets/love.png", height: 40, width: 40)),
                                     Text("Dating",
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
                                 Padding(
                                   padding: const EdgeInsets.only(top: 10, bottom: 10),
                                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                       Container(
                                           decoration: BoxDecoration(
                                               border: Border.all(),
                                               image: DecorationImage(
                                                   image: AssetImage("assets/g2.jpg"), fit: BoxFit.cover),
                                               color: Colors.deepOrangeAccent,
                                               borderRadius: BorderRadius.circular(360)),
                                           height: screenHeight*0.05,
                                           width: screenWidth*0.10),
                                       InkWell(
                                         onTap: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context)=>StatusPage()));
                                         },
                                         child: Container(
                                           decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(30),
                                               border: Border.all()
                                           ),
                                           height: screenHeight*0.05,
                                           width: screenWidth*6/8,
                                           child: Center(child: Text("What's on your mind?")),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                                 Divider(),
                                 // Row(
                                 //   children: [
                                     // Padding(
                                     //   padding: const EdgeInsets.all(5),
                                     //   child: Container(
                                     //     height: screenHeight*0.24,
                                     //     width: screenWidth*0.30,
                                     //     decoration: BoxDecoration(
                                     //       border: Border.all(),
                                     //       borderRadius: BorderRadius.circular(10),
                                     //     ),
                                     //     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                     //       children: [
                                     //         Container(
                                     //           height: screenHeight*0.15,
                                     //           width: screenWidth*0.30,
                                     //           decoration: BoxDecoration(
                                     //               borderRadius: BorderRadius.circular(10),
                                     //               image: DecorationImage(
                                     //                   image: AssetImage("assets/g2.jpg"), fit: BoxFit.cover
                                     //               )
                                     //           ),
                                     //         ),
                                     //         Center(
                                     //           child: Padding(
                                     //             padding: const EdgeInsets.all(8.0),
                                     //             child: Icon(Icons.add_circle, color: AppColor.button,),
                                     //           ),
                                     //         ),
                                     //         Center(child: Text("Create story"))
                                     //       ],
                                     //     ),
                                     //   ),
                                     // ),

                                 //   ],
                                 // )

                                 Expanded(
                                   child: ListView.builder(
                                       scrollDirection: Axis.horizontal,
                                       itemBuilder: (Index, Context){
                                         return
                                           Padding(
                                             padding: const EdgeInsets.all(5),
                                             child: Container(
                                               height: screenHeight*0.25,
                                               width: screenWidth*0.30,
                                               decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(10),
                                                   image: DecorationImage(
                                                       image: AssetImage("assets/g1.jpg"), fit: BoxFit.cover)
                                               ),
                                               child: Padding(
                                                 padding: const EdgeInsets.all(5),
                                                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                   children: [
                                                     Align(
                                                       alignment: Alignment.topLeft,
                                                       child: Container(
                                                           decoration: BoxDecoration(
                                                               border: Border.all(),
                                                               image: DecorationImage(
                                                                   image: AssetImage("assets/g2.jpg"), fit: BoxFit.cover),
                                                               color: Colors.deepOrangeAccent,
                                                               borderRadius: BorderRadius.circular(360)),
                                                           height: screenHeight*0.05,
                                                           width: screenWidth*0.10),
                                                     ),
                                                     Padding(
                                                       padding:  EdgeInsets.only(top: screenHeight*0.15),
                                                       child: Text("Riya Islam", style: TextStyle(
                                                           fontSize: screenWidth*0.04,
                                                           fontWeight: FontWeight.bold,
                                                           color: Colors.white)),
                                                     ),
                                                   ],
                                                 ),
                                               ),
                                             ),
                                           );
                                       }
                                   ),
                                 ),

                               ],
                             ),
                           ),

                         ),
                       ]
                   ),
                 ),
               ];
             },
               body: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [

                     Divider(),
                     SizedBox(height: screenHeight*0.03),

                     Expanded(
                       child: ListView.builder(
                           itemCount: 20,
                           itemBuilder: (context, index){
                             return Padding(
                               padding: const EdgeInsets.all(10),
                               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                       children: [
                                         Container(
                                           decoration: BoxDecoration(
                                               image: DecorationImage(
                                                   image: AssetImage("assets/g2.jpg"), fit: BoxFit.cover),
                                               color: Colors.deepOrangeAccent,
                                               borderRadius: BorderRadius.circular(360)),
                                           height: screenHeight*0.05,
                                           width: screenWidth*0.10,
                                         ),
                                         SizedBox(width: screenWidth*0.02),
                                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text("Riya Islam", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                                               SizedBox(height: screenWidth*0.02),
                                               Text("22 Feb 2022", style: TextStyle(fontSize: screenWidth*0.03))]),

                                       ]
                                   ),
                                   SizedBox(height: screenWidth*0.05),
                                   Text("tittle in here............"),
                                   SizedBox(height: screenWidth*0.04),
                                   Container(
                                     width: screenWidth,
                                     height: screenHeight*0.50,
                                     decoration: BoxDecoration(
                                         image: DecorationImage(
                                             image: AssetImage("assets/g1.jpg"), fit: BoxFit.cover),
                                         border: Border.all(),
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                   ),
                                   SizedBox(height: screenWidth*0.04),
                                   Row(
                                       children: [
                                         Padding(padding:  EdgeInsets.only(left: 15),
                                             child: Text("Like")),
                                         SizedBox(width: screenWidth*0.02),
                                         Icon(Icons.favorite, color: Colors.red),
                                         SizedBox(width: screenWidth*0.20),
                                         Text("Share", style: TextStyle(color: Colors.blue))]),
                                   SizedBox(height: screenWidth*0.05),
                                   TextFormField(
                                     controller: _commentController,
                                     maxLines: null,
                                     keyboardType: TextInputType.multiline,
                                     decoration: InputDecoration(
                                         filled: true,
                                         fillColor: AppColor.grey_textFiled,
                                         focusedBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             borderSide: BorderSide(color: AppColor.button)),
                                         focusColor: AppColor.button,
                                         contentPadding: EdgeInsets.fromLTRB(20, 1, 1, 0),
                                         border: OutlineInputBorder(
                                             borderSide: BorderSide(color: AppColor.button),
                                             borderRadius: BorderRadius.circular(10)),
                                         hintText: "write a comment",
                                         suffixIcon: Icon(Icons.send, color: Colors.blue,)
                                     ),
                                   ),
                                   SizedBox(height: screenWidth*0.10),
                                   Divider(thickness: 2,),

                                 ],
                               ),
                             );
                           }),
                     ),
                   ],
                 ),
               ),
           )
       )
    );
  }
}
