import 'package:flutter/material.dart';

class GuestListSelect extends StatelessWidget {
  Function callback;
  int list;

  GuestListSelect({@required this.callback, this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 76,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                this.callback(1);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: this.list == 1 ? Color(0xff7BA2F1) : null,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/icons/noivo.png'),
                    Text('Noivo')
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                this.callback(2);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: this.list == 2 ? Color(0xff2C83DB) : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/icons/noiva.png'),
                    Text('Noiva')
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                this.callback(3);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: this.list == 3 ? Color(0xff2C83DB) : null,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/icons/people.png'),
                    Text('Outros')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
