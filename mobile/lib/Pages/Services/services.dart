import 'package:flutter/material.dart';
import 'package:tcc/Components/cardService.dart';
import 'package:tcc/Pages/PhotoServices/photoService.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7BA2F1),
        title: Text('Fornecedores'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              'assets/images/services.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
              alignment: Alignment.center,
              height: 35,
              width: double.infinity,
              color: Color(0xff7BA2F1),
              child: Text(
                'Navegue por categoria',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Doces e comida',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'buffet.jpg',
                type: 1,
                text: 'Buffet',
              ),
              CardService(
                image: 'coffee.jpg',
                type: 1,
                text: 'Coffee Break',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardService(
                  image: 'doces.jpg',
                  type: 1,
                  text: 'Doces finos',
                ),
                CardService(
                  image: 'bolo.jpg',
                  type: 1,
                  text: 'Bolos',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Músicas',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'bandas.png',
                type: 1,
                text: 'Banda',
              ),
              CardService(
                image: 'grupo.jpg',
                type: 1,
                text: 'Grupo musical',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              child: CardService(
                image: 'dj.jpg',
                type: 2,
                text: 'DJ',
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Serviços de bar',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'bartender.jpg',
                type: 3,
                text: 'Bartender',
              ),
              CardService(
                image: 'copeira.png',
                type: 3,
                text: 'Garçom / Copeira',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Fotos e vídeo',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PhotoService()));
                },
                child: CardService(
                  image: 'photo.png',
                  type: 3,
                  text: 'Fotógrafo',
                ),
              ),
              CardService(
                image: 'cinegrafista.jpg',
                type: 3,
                text: 'Cinegrafista',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Papelaria',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'lembraca.jpg',
                type: 1,
                text: 'Lembrança convidados',
              ),
              CardService(
                image: 'padrinhos.jpg',
                type: 1,
                text: 'Lembrança padrinhos',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              child: CardService(
                image: 'convite.jpg',
                type: 2,
                text: 'Convites',
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Lua de mel',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'quarto.jpg',
                type: 3,
                text: 'Noite de núpcias',
              ),
              CardService(
                image: 'viagem.png',
                type: 3,
                text: 'Agência de viagens',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Joias',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              child: CardService(
                image: 'alianca.jpg',
                type: 4,
                text: 'Aliança',
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Lazer',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'noivo.jpg',
                type: 3,
                text: 'Lazer',
              ),
              CardService(
                image: 'noiva.jpg',
                type: 3,
                text: 'Dia da noiva',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Cerimônia',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              child: CardService(
                image: 'igreja.jpg',
                type: 4,
                text: 'Igreja',
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Serviços de locomoção',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'carro.jpg',
                type: 3,
                text: 'Aluguel de carro',
              ),
              CardService(
                image: 'valet.jpg',
                type: 3,
                text: 'Valet',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Decorar',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              child: CardService(
                image: 'decoracao.jpg',
                type: 4,
                text: 'Decoração',
              ),
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Serviços de locomoção',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardService(
                image: 'seguranca.jpg',
                type: 3,
                text: 'Segurança',
              ),
              CardService(
                image: 'monitora.jpg',
                type: 3,
                text: 'Monitora',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            color: Color(0xff707070).withOpacity(0.4),
            height: 3,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
            child: Text(
              'Festa',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardService(
                  image: 'salao.jpg',
                  type: 3,
                  text: 'Salão de festa',
                ),
                CardService(
                  image: 'kids.jpg',
                  type: 3,
                  text: 'Espaço kids',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
