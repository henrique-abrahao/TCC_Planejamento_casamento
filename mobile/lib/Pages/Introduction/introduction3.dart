import 'package:flutter/material.dart';
import 'package:tcc/Modals/userModal.dart';
import 'package:tcc/Pages/Home/home_page.dart';

class Introduction3 extends StatelessWidget {
  final User user;

  Introduction3({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 273,
            child: Image.asset(
              'assets/images/introducao2.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 68.0, left: 82, right: 82, bottom: 16),
            child: Text(
              'É claro que vocês, noivos, não precisam ficar presos a um único estilo, é possível mesclá-los desde que haja coerência e a mistura continue'
              ' refletindo a personalidade de ambos e não seja algo somente que esteja na moda.',
              style: TextStyle(color: Colors.black54, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82.0),
            child: Text(
              'Vamos definir o que reflete cada estilo para vocês escolherem qual será o do casamento de vocês?',
              style: TextStyle(color: Colors.black54, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 164, right: 164),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black54)),
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black54)),
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0, left: 24, right: 24),
            child: SizedBox(
              height: 42,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(
                            user: user,
                          )));
                },
                child: Text(
                  'Avançar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                color: Color(0xff2b83dc),
              ),
            ),
          )
        ],
      ),
    );
  }
}
