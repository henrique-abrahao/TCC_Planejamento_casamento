import 'package:flutter/material.dart';
import 'package:tcc/Modals/photoModal.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoDetails extends StatelessWidget {
  final Photo photo;

  PhotoDetails({this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff7BA2F1),
          title: Text('Fornecedores')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                'Fotógrafos',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Center(
                child: Image.network(
                  '${photo.img}',
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 20),
            child: Text(
              '${photo.name}',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 20),
            child: Text(
              '${photo.desc}',
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/deal.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Já contratou? Que tal avaliar?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        color: Color(0xff092B67)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: OutlineButton(
                      borderSide: BorderSide(
                        color: Color(0xff189d0e), //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 2, //width of the border
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: () {
                            launch("whatsapp://send?phone=${photo.phone}");
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/whatsapp.png',
                              ),
                              Text(
                                'Pedir orçamento grátis',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Ubuntu',
                                    color: Color(0xff189d0e)),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 40,
                  width: 60,
                  child: OutlineButton(
                      borderSide: BorderSide(
                        color: Color(0xff2C83DB), //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 2, //width of the border
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.call,
                        color: Color(0xff2C83DB),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
