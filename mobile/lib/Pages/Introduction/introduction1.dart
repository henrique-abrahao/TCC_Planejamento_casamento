import 'package:flutter/material.dart';

class Introduction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/introducao1.jpg', width: double.infinity,),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 30.0, bottom: 14),
            child: Text('Bem Vindo a plataforma Realizar!',
            style: TextStyle(
              color: Color(0xff58668F),
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Text(
            'Olá queridos noivos!',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Com muita alegria, desejamos boas vindas à nossa plataforma e expressamos o quanto é '
                  'importante tê-los como clientes(usuários). Realizar sonhos é nossa missão, além disso, nossa função é planejar, organizar e supervisionar o seu evento, e deixa-lo mais divertido.',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Prezamos pela boa relação entre clientes, fornecedores e terceirizados e queremos que o tempo que vocês fizerem parte da nossa plataforma, seja o mais agradável possível.',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 82.0, left: 164, right: 164),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black54,
                      ),
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black54)
                      ),
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.black54)
                      ),
                    ),
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