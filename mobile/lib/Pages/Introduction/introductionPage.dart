import 'package:flutter/material.dart';
import 'package:tcc/Modals/userModal.dart';
import 'package:tcc/Pages/Introduction/introduction1.dart';
import 'package:tcc/Pages/Introduction/introduction2.dart';
import 'package:tcc/Pages/Introduction/introduction3.dart';

class IntroductionPage extends StatefulWidget {
  final User user;

  IntroductionPage({this.user});

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Introduction1(),
        Introduction2(),
        Introduction3(
          user: widget.user,
        ),
      ],
    );
  }
}
