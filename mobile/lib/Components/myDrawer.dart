import 'package:flutter/material.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:tcc/Modals/userModal.dart';
import 'package:tcc/Pages/Login/login.dart';

class MyDrawer extends StatefulWidget {
  int page;
  final User user;

  MyDrawer({@required this.page, @required this.user});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 196,
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/bem_vindo.jpg'),
                Container(
                  margin: EdgeInsets.only(top: 28),
                  alignment: Alignment.topRight,
                  child:
                      Image.asset('assets/images/logo_white.png', height: 48),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0, left: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 36,
                        backgroundImage: NetworkImage(
                            'https://elaele.com.br/img/anonimo.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                        child: Text(
                          '${widget.user.name}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Text('${widget.user.email}',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    FlatIcons.home,
                    color: widget.page == 1 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: widget.page == 1 ? Colors.blue : Colors.black38),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    Icons.person,
                    color: widget.page == 2 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text('Perfil',
                    style: TextStyle(
                        color: widget.page == 2 ? Colors.blue : Colors.black38))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    Icons.notifications_none,
                    color: widget.page == 3 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text('Notificações',
                    style: TextStyle(
                        color: widget.page == 3 ? Colors.blue : Colors.black38))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    FlatIcons.calendar_6,
                    color: widget.page == 4 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text('Calendário',
                    style: TextStyle(
                        color: widget.page == 4 ? Colors.blue : Colors.black38))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    Icons.settings,
                    color: widget.page == 5 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text('Configurações',
                    style: TextStyle(
                        color: widget.page == 5 ? Colors.blue : Colors.black38))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 44.0, right: 28),
                  child: Icon(
                    Icons.chat,
                    color: widget.page == 6 ? Colors.blue : Colors.black38,
                  ),
                ),
                Text('Mensagens',
                    style: TextStyle(
                        color: widget.page == 6 ? Colors.blue : Colors.black38))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginHome()));
                    },
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 44.0, right: 28),
                          child: Icon(FlatIcons.exit_1),
                        ),
                        Text('Sair')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
