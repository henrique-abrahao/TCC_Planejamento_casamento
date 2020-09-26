import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc/Components/inputLogin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tcc/Modals/userModal.dart';
import 'package:tcc/Pages/Home/home_page.dart';
import 'package:tcc/Pages/Introduction/introductionPage.dart';
import 'package:tcc/api.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPass = TextEditingController();

  User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo_black.png',
                      width: 240,
                    )),
                Input(
                  pass: false,
                  placeHolder: 'E-mail',
                  marginBottom: 20,
                  controller: _controllerEmail,
                ),
                Input(
                  placeHolder: 'Senha',
                  pass: true,
                  marginBottom: 30,
                  controller: _controllerPass,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 15),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2c83db),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 58,
                    width: double.infinity,
                    child: FlatButton(
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        try {
                          _user = await Api().login(
                              email: _controllerEmail.text,
                              pass: _controllerPass.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IntroductionPage(
                                        user: _user,
                                      )));
                        } catch (e) {
                          alertBox();
                        }
                      },
                      color: Color(0xff2c83db),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Divider(
                      color: Colors.black54,
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 110),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        child: SvgPicture.asset(
                          'assets/icons/facebook.svg',
                          width: 25,
                          color: Color(0xff1976d2),
                        ),
                        onTap: () {
                          launch(
                              'https://www.facebook.com/realizarassessoriaeevento/');
                        },
                      ),
                      GestureDetector(
                          child: SvgPicture.asset('assets/icons/instagram.svg',
                              width: 25),
                          onTap: () {
                            launch(
                                'https://instagram.com/realizarassessoriaeeventos?igshid=h0elnya1a61p');
                          }),
                      GestureDetector(
                          child: SvgPicture.asset('assets/icons/pinterest.svg',
                              width: 25),
                          onTap: () {
                            launch(
                                'https://br.pinterest.com/realizarassessoria/');
                          }),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> alertBox() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ops...'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Usuário ou senha inválido'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
