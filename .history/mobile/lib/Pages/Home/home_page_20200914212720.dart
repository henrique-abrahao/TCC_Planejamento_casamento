import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc/Components/cardMenu.dart';
import 'package:tcc/Components/myDrawer.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:tcc/Modals/userModal.dart';
import 'package:tcc/Pages/Estimate/estimate.dart';
import 'package:tcc/Pages/GuestList/guest_list_home.dart';
import 'package:tcc/Pages/ListDo/listDo.dart';
import 'package:tcc/Pages/Services/services.dart';

class HomePage extends StatefulWidget {
  final User user;

  HomePage({this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);

    final dateYear = int.parse(widget.user.date.substring(0, 4));

    final dateMonth = int.parse(widget.user.date.substring(5, 7));

    final dateDay = int.parse(widget.user.date.substring(8, 10));

    final birthday = DateTime(dateYear, dateMonth, dateDay);
    final date2 = DateTime.now();
    final days = date2.difference(birthday).inDays * -1;
    final mouth = (days / 30);

    String dateCasamento = birthday.toString();
    dateCasamento =
        '${dateCasamento.substring(8, 10)}/${dateCasamento.substring(5, 7)}/${dateCasamento.substring(0, 4)}';

    String text;

    if (days < 30)
      text = 'Faltam $days dias para seu casamento';
    else if (mouth < 12)
      text =
          'Faltam ${mouth.toInt()} ${mouth.toInt() == 1 ? 'mês' : 'meses'} e ${days % 30} dias para seu casamento';
    else
      text = 'A data do seu casamento é: $dateCasamento';

    return Scaffold(
      drawer: MyDrawer(
        page: 1,
        user: widget.user,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 233.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Container(
              height: 36,
              width: 260,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Buscar...',
                    contentPadding: EdgeInsets.only(top: 10, left: 10),
                    suffixIcon: IconButton(icon: Icon(Icons.search)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 0.4,
                        ))),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/backgroundCard.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(color: Colors.black54),
                  Center(
                      child: Image.asset('assets/images/logo_white.png',
                          width: 100))
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 16),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 76,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/bem_vindo.jpg',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      height: 76,
                      width: double.infinity,
                      color: Colors.black26,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Bem Vindo, ${widget.user.name}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('$text',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Navegue por categoria',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                padding: EdgeInsets.only(left: 18, right: 18, bottom: 16),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListDo()));
                            },
                            child: CardMenu(image: 'planejamento')),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Planejamento',
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Services()));
                            },
                            child: CardMenu(
                              image: 'fornecedores',
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('Fornecedores'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                            child: CardMenu(
                              image: 'listadeconvidados',
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GuestListHome()));
                            }),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('Lista de convidados'),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Estimate()));
                            },
                            child: CardMenu(
                              image: 'orcamento',
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('Orçamento'),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
