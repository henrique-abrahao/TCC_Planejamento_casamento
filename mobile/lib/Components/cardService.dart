import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  String image;
  String text;
  int type;
  CardService({this.image, this.type, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.white,
          height: type == 1 ? 110 : type == 2 ? 135 : type == 4 ? 280 : 290,
          width: type == 1 ? 190 : type == 2 ? 395 : type == 4 ? 400 : 190,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 8),
          child: Text(
            '$text',
            style: TextStyle(fontFamily: 'Ubuntu'),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
