import 'package:dating2_ui/helper/all_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  String btnText;
  CustomButton({Key? key,
    required this.btnText,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}
class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: screenWidth,
        height: screenHeight*0.05,
        decoration: BoxDecoration(
          color: AppColor.button,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Text(widget.btnText,
            style: TextStyle(color: Colors.white,
                fontSize: screenWidth*0.04, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
