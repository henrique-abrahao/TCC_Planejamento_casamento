import 'package:flutter/material.dart';

class GuestSelectName extends StatelessWidget {

  String name;
  bool isGodfather;
  bool isGodmother;

  GuestSelectName({@required this.name, @required this.isGodfather, @required this.isGodmother});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.8, color: Colors.black54)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('${this.name} ${this.isGodmother ? '(madrinha)' : this.isGodfather ? '(padrinho)' : ''}', style: TextStyle(color: Colors.black54),),
          ),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.black54,), onPressed: (){},)
        ],
      ),
    );
  }
}
