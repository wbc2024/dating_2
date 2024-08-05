import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/notification/notification_page.dart';
import 'package:flutter/material.dart';

class LikeDislikePage extends StatefulWidget {
  const LikeDislikePage({Key? key}) : super(key: key);

  @override
  _LikeDislikePageState createState() => _LikeDislikePageState();
}

class _LikeDislikePageState extends State<LikeDislikePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              width: screenWidth,
              height: screenHeight * 4 / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("assets/g1.jpg"), fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.20,
                      decoration: BoxDecoration(
                          color: AppColor.button,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "30km",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.25,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.green)),
                        child: Center(
                          child: Text("LIKED",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.48),
                      child: Text("Deborah, 25",
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school,
                          color: Colors.white,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("University of Oxford",
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.business_center_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Computer Programmar",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.11,
                            height: screenHeight * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360),
                            ),
                            child: Center(child: Icon(Icons.history)),
                          ),
                          Container(
                            width: screenWidth * 0.13,
                            height: screenHeight * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360),
                            ),
                            child: Center(child: Icon(Icons.clear_rounded)),
                          ),
                          Container(
                            width: screenWidth * 0.13,
                            height: screenHeight * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360),
                            ),
                            child: Center(
                                child: Icon(Icons.favorite,
                                    color: AppColor.button)),
                          ),
                          Container(
                            width: screenWidth * 0.11,
                            height: screenHeight * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360),
                            ),
                            child: Center(child: Icon(Icons.remove_red_eye)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
