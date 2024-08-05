import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  bool obsecureValue;
  var prefixIcon;
  CustomTextField({Key? key,
    required this.controller,
    required this.hintText,
    required this.obsecureValue,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}
String passStore="";
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        validator: (value){
          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value!);
          if(value.isEmpty){
            return "This field is empty!";
          }
          if(widget.hintText=="Email"){
            if(!emailValid)
              return "Email format is not correct!";
          }
          if(widget.hintText=="Password")
          {
            passStore=value;
            if(value.length<6)
              return "Password must be atleast 6 char!";
          }
          if(widget.hintText=="Confirm Password"){
            if(passStore!=value){
              return "Password didn't match!";
            }
          }
        },
        obscureText: widget.obsecureValue,
        // cursorColor: allColor.textFieldColor,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon, color: Colors.grey,size: 25),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey,)),
          focusColor: Colors.grey,
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(30)),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
