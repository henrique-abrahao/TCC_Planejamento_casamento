import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class EstimulateEspecific extends StatefulWidget {
  final double price;

  EstimulateEspecific({this.price});

  @override
  _EstimulateEspecificState createState() => _EstimulateEspecificState();
}

class _EstimulateEspecificState extends State<EstimulateEspecific> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valores'),
        backgroundColor: Color(0xff7BA2F1),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Valor disponível: ${widget.price.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Image.asset(
                    'assets/images/money.png',
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xff3847CB),
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
                      maxHeight: 200.0,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          'assets/images/cocktail.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
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
                          'Alimentação e bebidas',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Buffet - 25% = ${(widget.price * 0.25).toStringAsFixed(2)}'),
                      Text(
                          'Bebidas alcoólicas - 6% = ${(widget.price * 0.06).toStringAsFixed(2)}'),
                      Text(
                          'Bolo e Doces - 2% = ${(widget.price * 0.02).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xffC70F9C),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                    width: 120,
                    height: 120,
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 140.0,
                      minHeight: 0.0,
                      maxHeight: 200.0,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/church.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Estruturais',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Igreja - 2% = ${(widget.price * 0.02).toStringAsFixed(2)}'),
                      Text(
                          'Local de festa - 7% = ${(widget.price * 0.07).toStringAsFixed(2)}'),
                      Text(
                          'Decoração - 8% = ${(widget.price * 0.08).toStringAsFixed(2)}'),
                      Text(
                          'Mobiliário - 3% = ${(widget.price * 0.03).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xff0FF363),
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
                      maxHeight: 200.0,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/dj.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Serviços',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Fotos e filmagem - 10% = ${(widget.price * 0.10).toStringAsFixed(2)}'),
                      Text(
                          'Assesoria - 7% = ${(widget.price * 0.07).toStringAsFixed(2)}'),
                      Text(
                          'DJ e Sonorização - 3% = ${(widget.price * 0.03).toStringAsFixed(2)}'),
                      Text(
                          'Músicos - 2% = ${(widget.price * 0.02).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xffF30F2E),
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
                      maxHeight: 200.0,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/newlyweds.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
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
                          'Vestuário e beleza',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Vestido de noiva - 6% = ${(widget.price * 0.06).toStringAsFixed(2)}'),
                      Text(
                          'Traje noivo - 2% = ${(widget.price * 0.02).toStringAsFixed(2)}'),
                      Text(
                          'Acessórios da noiva - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                      Text(
                          'Dia da noiva - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xff26D1DE),
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
                      maxHeight: 200.0,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/diamond.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
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
                          'Acessórios',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Convites persona. - 3% = ${(widget.price * 0.03).toStringAsFixed(2)}'),
                      Text(
                          'Lembrancinhas - 3% = ${(widget.price * 0.03).toStringAsFixed(2)}'),
                      Text(
                          'Carro - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                      Text(
                          'Diversos - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: 60),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xffB1CB68),
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
                      maxHeight: 200.0,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/saving.png',
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.only(bottom: 80),
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
                          'Segurança',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                          'Excedentes - 2% = ${(widget.price * 0.02).toStringAsFixed(2)}'),
                      Text(
                          'Quebras - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                      Text(
                          'Emergências - 1% = ${(widget.price * 0.01).toStringAsFixed(2)}'),
                    ],
                  ),
                )
              ],
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
            child: Text(
              'Gráfico dos seus gastos',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          AnimatedCircularChart(
            key: _chartKey,
            size: const Size(300.0, 300.0),
            initialChartData: <CircularStackEntry>[
              new CircularStackEntry(
                <CircularSegmentEntry>[
                  new CircularSegmentEntry(
                      widget.price * 0.33, Color(0xff3847CB),
                      rankKey: 'Q1'),
                  new CircularSegmentEntry(
                      widget.price * 0.2, Color(0xffC70F9C),
                      rankKey: 'Q2'),
                  new CircularSegmentEntry(
                      widget.price * 0.22, Color(0xff0FF363),
                      rankKey: 'Q3'),
                  new CircularSegmentEntry(
                      widget.price * 0.1, Color(0xffF30F2E),
                      rankKey: 'Q4'),
                  new CircularSegmentEntry(
                      widget.price * 0.08, Color(0xff26D1DE),
                      rankKey: 'Q5'),
                  new CircularSegmentEntry(
                      widget.price * 0.04, Color(0xffB1CB68),
                      rankKey: 'Q6'),
                ],
                rankKey: 'Quarterly Profits',
              ),
            ],
            chartType: CircularChartType.Pie,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6, left: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2D3BD6),
                          borderRadius: BorderRadius.circular(6.0)),
                      height: 19,
                      width: 22,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text('Alimentação e Bebidas')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6, left: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffA60C8C),
                          borderRadius: BorderRadius.circular(6.0)),
                      height: 19,
                      width: 22,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text('Estruturais')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6, left: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff33DB27),
                          borderRadius: BorderRadius.circular(6.0)),
                      height: 19,
                      width: 22,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text('Serviços')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6, left: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffCC182A),
                          borderRadius: BorderRadius.circular(6.0)),
                      height: 19,
                      width: 22,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text('Vestuários e beleza')
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 6, left: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff5FB7E5),
                            borderRadius: BorderRadius.circular(6.0)),
                        height: 19,
                        width: 22,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text('Acessórios')
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 6, left: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffD4E66E),
                          borderRadius: BorderRadius.circular(6.0)),
                      height: 19,
                      width: 22,
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text('Segurança')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
