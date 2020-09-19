import 'package:flutter/material.dart';
import 'package:tcc/Components/dropDown.dart';

class ListDo extends StatefulWidget {
  @override
  _ListDoState createState() => _ListDoState();
}

class _ListDoState extends State<ListDo> {
  List work = [
    {
      'lenght': 5,
      'title': '1 Ano e meio a 1 ano antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];

  List work2 = [
    {
      'lenght': 5,
      'title': '11 meses á 9 meses antes',
      'items': [
        {'item': 'Iniciar Enxoval', 'isComplete': false},
        {'item': 'Pesquisar fornecedores', 'isComplete': false},
        {'item': 'Cuidados com a saúde', 'isComplete': false},
        {'item': 'Marcar degustações com buffets', 'isComplete': false},
        {'item': 'Cuidar do futuro lar', 'isComplete': false},
      ],
    }
  ];

  List work3 = [
    {
      'lenght': 5,
      'title': '8 meses á 9 meses antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work4 = [
    {
      'lenght': 5,
      'title': '5 meses á 4 meses antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work5 = [
    {
      'lenght': 5,
      'title': '3 meses antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work6 = [
    {
      'lenght': 5,
      'title': '2 meses antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work7 = [
    {
      'lenght': 5,
      'title': '1 mês antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work8 = [
    {
      'lenght': 5,
      'title': '15 dias antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work9 = [
    {
      'lenght': 5,
      'title': '7 dias antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work10 = [
    {
      'lenght': 5,
      'title': '2 dias antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];
  List work11 = [
    {
      'lenght': 5,
      'title': '1 dia antes',
      'items': [
        {'item': 'Definir data do casamento', 'isComplete': false},
        {'item': 'Local da recepção', 'isComplete': false},
        {'item': 'Comprar uma agenda', 'isComplete': false},
        {
          'item': 'Dividir tarefas, com amigos, família etc..',
          'isComplete': false
        },
        {'item': 'Contratar uma assessoria de casamento', 'isComplete': false},
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planejamento'),
        backgroundColor: Color(0xff7BA2F1),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
            child: Text(
              'Etapas e periodos',
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
                color: Color(0xffF373C9),
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
                            'assets/images/cabecalhoplanejam.png',
                            fit: BoxFit.cover,
                          ),
                          margin: EdgeInsets.only(bottom: 25),
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Siga o passo a passo do seu check list:',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'Após definir o estilo do seu casamento,o seu orçamento, e a lista de convidados,é a hora de organizar seu casamento.',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Ubuntu',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
            child: DropDown(
              works: work,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work7,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work8,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work9,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: DropDown(
              works: work10,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, bottom: 15),
            child: DropDown(
              works: work11,
            ),
          ),
        ],
      ),
    );
  }
}
