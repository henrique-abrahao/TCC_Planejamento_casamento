import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {

  String image;
  CardMenu({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 168,
      child:
      ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/images/$image.jpg', fit: BoxFit.cover, )),
    );
  }
}
