import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {

  Function callback;
  bool godFather = false;
  bool godMother = false;

  PopUp({@required this.callback, @required this.godFather , this.godMother});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon( this.godFather ? Icons.done_outline : null, color: Colors.green, size: 24,),
              Text(
                "Padrinho",
                style: TextStyle(color: !this.godFather ? Colors.black38 : Colors.black),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon( this.godMother ? Icons.done_outline : null, color: Colors.green, size: 24,),
              Text(
                "Madrinha",
                style: TextStyle(color: !this.godMother ? Colors.black38 : Colors.black),
              ),
            ],
          ),
        ),
      ],
      icon: Icon(Icons.more_vert),
      onSelected: this.callback,
    );
  }


}
