import 'package:dating2_ui/helper/all_color.dart';
import 'package:flutter/material.dart';
class CustomTextFieldTwo extends StatefulWidget {


  TextEditingController controller;
  bool obsecureVal;

  CustomTextFieldTwo({Key? key,
    required this.controller,
    required this.obsecureVal,
  }) : super(key: key);

  @override
  _CustomTextFieldTwoState createState() => _CustomTextFieldTwoState();
}

class _CustomTextFieldTwoState extends State<CustomTextFieldTwo> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
          style: TextStyle(color: Colors.white),
          obscureText: widget.obsecureVal,
          controller: widget.controller,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(1),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 3),
            ),
            fillColor: Colors.white,
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(color: Colors.white),)
      ),
    );
  }
}
