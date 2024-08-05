import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/match_details_page/match_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  _MatchPageState createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                    child:
                        Image.asset("assets/love.png", height: 40, width: 40)),
                Text("Matches",
                    style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Icon(Icons.notifications, color: Colors.grey)
              ],
            ),
            Divider(thickness: 2),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchesDetailsPage()));
                      },
                      child:
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage("assets/g2.jpg"),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenWidth * 0.15,
                                decoration: BoxDecoration(
                                    color: AppColor.button,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          color: Colors.white, size: 15),
                                      Text(
                                        "30km",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenWidth * 0.03),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: screenHeight * 0.11),
                                child: Text("Deborah, 25",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.school,
                                      color: Colors.white, size: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("University of Oxford",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenWidth * 0.03)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.business_center_rounded,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("Computer Programmar",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenWidth * 0.03)),
                                  )
                                ],
                              ),
                            ],
                          ),
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
