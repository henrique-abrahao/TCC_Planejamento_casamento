import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tcc/Components/cardPhoto.dart';
import 'package:tcc/Modals/photoModal.dart';
import 'package:http/http.dart' as http;

class PhotoService extends StatefulWidget {
  @override
  _PhotoServiceState createState() => _PhotoServiceState();
}

class _PhotoServiceState extends State<PhotoService> {
  List<Photo> photos = List();
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response = await http.get("http://192.168.15.200:3333/photo");
    if (response.statusCode == 200) {
      photos = (json.decode(response.body) as List)
          .map((data) => new Photo.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff7BA2F1),
          title: Text('Fornecedores')),
      body: Column(
        children: [
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 94,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xff73A2F3),
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
                          'assets/images/shop.png',
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
                          'Os melhores fornecedores pra voce',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'Aqui estão listados os melhoresfornecedores, que vão ajudar você tornarainda mais especial o seu casamento.',
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
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                color: Color(0xff707070).withOpacity(0.65),
                height: 3,
                width: double.infinity,
              )),
          Container(
              alignment: Alignment.center,
              height: 35,
              width: double.infinity,
              color: Color(0xff7BA2F1),
              child: Text(
                'Fotógrafos',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10),
                  child: GridView.builder(
                      itemCount: photos.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),
                      itemBuilder: (BuildContext context, int index) {
                        return CardPhoto(
                          photo: photos[index],
                        );
                      }),
                ))
        ],
      ),
    );
  }

  // Widget _gerGrid(BuildContext context, AsyncSnapshot snapshot) {

  //   return GridView.builder(
  //       padding: EdgeInsets.all(10),
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
  //       itemCount: 11,
  //       itemBuilder: (context, index) {
  //         return CardPhoto(
  //           photo: snapshot.data,
  //         );
  //       });
  // }
}
