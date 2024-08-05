import 'package:dating2_ui/helper/all_color.dart';
import 'package:flutter/material.dart';

class ConversationDetails extends StatefulWidget {
  const ConversationDetails({Key? key}) : super(key: key);

  @override
  _ConversationDetailsState createState() => _ConversationDetailsState();
}

class _ConversationDetailsState extends State<ConversationDetails> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 30)),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/g2.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(360)),
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("Jennifer, 25",
                      style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
              ]),
              Divider(thickness: 2),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/g2.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(360)),
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.09),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: AppColor.simpleBlue,
                      height: screenHeight * 0.04,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hi", textAlign: TextAlign.start),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: AppColor.button,
                    height: screenHeight * 0.04,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("How are you",
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/m.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(360)),
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.09),
              ]),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/g2.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(360)),
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.09),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: AppColor.simpleBlue,
                      height: screenHeight * 0.04,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("I'm fine .. Thanks & u?",
                            textAlign: TextAlign.start),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: AppColor.button,
                    height: screenHeight * 0.04,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("I'm also fine. Thank you so much",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/m.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(360)),
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.09),
              ]),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/g2.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(360)),
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.09),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: AppColor.simpleBlue,
                      height: screenHeight * 0.04,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Okay. see u again",
                            textAlign: TextAlign.start),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: AppColor.button,
                    height: screenHeight * 0.04,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Okk Bye",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/m.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(360)),
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.09)
              ]),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage("assets/g2.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(360)),
                        height: screenHeight * 0.04,
                        width: screenWidth * 0.09),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/g2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10)),
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.42),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                  onTap: () {
                    showBottomSheets(context);
                  },
                  child: Icon(Icons.add_link, color: AppColor.button)),
            ),
            Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.white1,
                    contentPadding: EdgeInsets.fromLTRB(15, 1, 1, 0),
                    hintText: "write message"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(Icons.send, color: AppColor.button),
            ),
          ],
        ),
      ),
    ));
  }
}

void showBottomSheets(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child:
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(360)
                              ),
                                child: Icon(Icons.description_outlined, color: Colors.white,)),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text("Document"),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: Icon(Icons.headset, color: Colors.white,)),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text("Audio"),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: Icon(Icons.photo, color: Colors.white,)),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text("Gallery"),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(360)
                                ),
                                  child: Icon(Icons.camera_alt_outlined, color: Colors.white,)),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text("Camera"),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(360)
                                  ),
                                  child: Icon(Icons.location_on, color: Colors.white,)),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text("Location"),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.circular(360)
                                  ),
                                  child: Icon(Icons.contacts_outlined, color: Colors.white,)),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text("Contacts"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
}
