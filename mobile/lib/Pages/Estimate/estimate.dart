import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tcc/Pages/EstimulateEspecific/estimulateEspecific.dart';

class Estimate extends StatefulWidget {
  @override
  _EstimateState createState() => _EstimateState();
}

class _EstimateState extends State<Estimate> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Orçamento'),
          centerTitle: true,
          backgroundColor: Color(0xff7BA2F1),
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
            child: Text(
              'Gastos do casamento',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 94,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xff8E0DFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                    width: 120,
                    height: 120,
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 120.0,
                      minHeight: 0.0,
                      maxHeight: 160.0,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          'assets/images/economy.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 25),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Calcule suas despesas',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'Controle suas economias, faça umcalculo com o valor disponível do seu investimento, para saber o quando deve gastar em cada seguimento.',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Ubuntu',
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 170,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 15, left: 8),
                      hintMaxLines: 1,
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(6.0),
                          borderSide: BorderSide(
                            width: 0.8,
                          )),
                      hintText: 'Valor disponivel',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 170,
                  child: FlatButton(
                    child: Text(
                      'Calcular orçamento',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EstimulateEspecific(
                                    price: double.parse(_controller.text),
                                  )));
                    },
                    color: Color(0xff2c83db),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(6.0)),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
