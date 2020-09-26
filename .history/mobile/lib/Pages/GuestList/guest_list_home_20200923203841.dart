import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc/Components/guestListName.dart';
import 'package:tcc/Components/guestListSelect.dart';
import 'package:tcc/Components/popUpGueste.dart';

class GuestListHome extends StatefulWidget {
  int list = 1;
  int numberConvidado = 0;
  bool godFather = false;
  bool godMother = false;

  List listMale = [];

  List listFemale = [];

  List listOther = [];

  @override
  _GuestListHomeState createState() => _GuestListHomeState();
}

class _GuestListHomeState extends State<GuestListHome> {
  selectList(num) {
    setState(() {
      widget.list = num;
    });
  }

  contGuest() {
    setState(() {
      widget.numberConvidado = widget.listMale.length +
          widget.listFemale.length +
          widget.listOther.length;
    });
  }

  onSelect(int) {
    setState(() {
      if (int == 1) {
        if (widget.godMother) {
          widget.godMother = false;
        }
        widget.godFather = !widget.godFather;
      } else if (int == 2) {
        if (widget.godFather) {
          widget.godFather = false;
        }
        widget.godMother = !widget.godMother;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List listName = widget.list == 1
        ? widget.listMale
        : widget.list == 2 ? widget.listFemale : widget.listOther;
    final TextEditingController eCtrl = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Convidados'),
          centerTitle: true,
          backgroundColor: Color(0xff7BA2F1),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 40),
              child: Text(
                'Monte sua lista de convidados',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 35, bottom: 15),
                child: Text(
                  'Selecione sua lista',
                  style: TextStyle(fontSize: 16),
                )),
            Container(
                padding: EdgeInsets.only(bottom: 14),
                child: GuestListSelect(
                  callback: selectList,
                  list: widget.list,
                )),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'Numero de Convidados: ${widget.numberConvidado}',
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 14),
                  itemCount: listName.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < listName.length) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: GuestSelectName(
                            name: listName[index]['name'],
                            isGodfather: listName[index]['isGodfather'],
                            isGodmother: listName[index]['isGodmother']),
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          Container(
                            height: 36,
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            child: TextField(
                              controller: eCtrl,
                              decoration: InputDecoration(
                                  suffixIcon: PopUp(
                                    callback: this.onSelect,
                                    godFather: widget.godFather,
                                    godMother: widget.godMother,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8))),
                            ),
                          ),
                          Container(
                            child: ClipOval(
                              child: Material(
                                color: Colors.blue,
                                child: InkWell(
                                  child: SizedBox(
                                      width: 42,
                                      height: 42,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    if (eCtrl.text == '') return null;
                                    setState(() {
                                      widget.list == 1
                                          ? widget.listMale.add({
                                              'name': eCtrl.text,
                                              'isGodfather': widget.godFather,
                                              'isGodmother': widget.godMother
                                            })
                                          : widget.list == 2
                                              ? widget.listFemale.add({
                                                  'name': eCtrl.text,
                                                  'isGodfather':
                                                      widget.godFather,
                                                  'isGodmother':
                                                      widget.godMother
                                                })
                                              : widget.listOther.add({
                                                  'name': eCtrl.text,
                                                  'isGodfather':
                                                      widget.godFather,
                                                  'isGodmother':
                                                      widget.godMother
                                                });
                                    });
                                    contGuest();
                                    widget.godMother = false;
                                    widget.godFather = false;
                                    eCtrl.clear();
                                  },
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(left: 16, top: 10),
                            alignment: Alignment.centerLeft,
                          )
                        ],
                      );
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 18.0, left: 24, right: 24, top: 16),
              child: SizedBox(
                height: 42,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Enviar Lista',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  color: Color(0xff2b83dc),
                ),
              ),
            ),
          ],
        ));
  }
}
