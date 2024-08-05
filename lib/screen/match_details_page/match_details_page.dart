import 'package:dating2_ui/custom_widgetes/custom_button.dart';
import 'package:dating2_ui/helper/all_color.dart';
import 'package:dating2_ui/screen/match_profile_page/match_profile.dart';
import 'package:flutter/material.dart';
class MatchesDetailsPage extends StatefulWidget {
  const MatchesDetailsPage({Key? key}) : super(key: key);

  @override
  _MatchesDetailsPageState createState() => _MatchesDetailsPageState();
}

class _MatchesDetailsPageState extends State<MatchesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child:
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Container(
                        width: screenWidth*0.31,
                        height: screenHeight*0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/g2.jpg"), fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.circular(360),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text("Jenifer", style: TextStyle(fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text("Likes you too", style: TextStyle(fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text("You and Jenifer, liked each other!!", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MatchProfilePage()));
                    },
                    child: CustomButton(
                        btnText: "Send Message"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight*0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.button),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(child: Text( "Keep passing",
                          style: TextStyle(
                              fontSize: screenWidth*0.04,
                              fontWeight: FontWeight.bold, color: AppColor.button))),
                    ),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
