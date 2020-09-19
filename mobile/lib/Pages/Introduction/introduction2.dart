import 'package:flutter/material.dart';

class Introduction2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/introducao3.jpg', width: double.infinity,),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 30.0, bottom: 14),
            child: Text('Juntos analise o perfil de vocês!',
              style: TextStyle(
                  color: Color(0xff58668F),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54.0),
            child: Text(
              'Vamos tornar sua experiência em organização de casamento mais divertida.',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82.0),
            child: Text(
              'Definir o estilo de casamento que mais combina com vocês é o primeiro passo para ter um casório com a cara de vocês e do jeito que sempre sonharam.',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82.0),
            child: Text(
              'Essa escolha também norteia o planejamento e a seleção dos fornecedores, dos produtos e dos serviços que mais têm a ver com cada jeito.',
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
                          border: Border.all(color: Colors.black54)
                      ),
                    ),
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
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}