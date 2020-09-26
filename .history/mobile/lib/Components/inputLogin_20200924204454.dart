import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  bool pass;
  String placeHolder;
  double marginBottom;
  TextEditingController controller;

  Input(
      {@required this.placeHolder,
      this.pass,
      this.marginBottom,
      this.controller});

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: widget.marginBottom != null ? widget.marginBottom : 0),
      child: TextField(
        obscureText: widget.pass,
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            width: 0.8,
          )),
          hintText: widget.placeHolder,
        ),
      ),
    );
    ;
  }
}
