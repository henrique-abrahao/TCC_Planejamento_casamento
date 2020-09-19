import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';

class DropDown extends StatefulWidget {

  final List works;

  DropDown({ this.works});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  bool isOpen = false;

  List isCompleted = [true, true, true, true, true];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            width: 260,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff707070)),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text('${widget.works[0]['title']}',
                  style: TextStyle(fontSize: 14, fontFamily: 'Ubuntu', color: Color(0xff2C83DB), fontWeight: FontWeight.w700),),
                    Image.asset(
                      'assets/images/${isOpen ? 'up' : 'down'}.png',
                    )
                  ],
              ),
               ),
          ),
        ),
        Conditional.single(
            context: context,
            conditionBuilder: (BuildContext context) => isOpen,
            widgetBuilder:(BuildContext context){
              return ListView.builder(
                  itemCount: widget.works[0]['lenght'],
                  shrinkWrap: true ,
                  itemBuilder: (context, index){
                    return  Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isCompleted[index] = !isCompleted[index];
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Conditional.single(
                                context: context,
                                conditionBuilder: (BuildContext context) => isCompleted[index],
                                widgetBuilder: (BuildContext context){
                                  return  Container(
                                  margin: EdgeInsets.only(right: 8 ),
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(5),));
                                  },
                                fallbackBuilder: (BuildContext context){
                                  return Padding(
                                    padding: const EdgeInsets.only( right: 9.0),
                                    child: Image.asset(
                                      'assets/images/correct.png',
                                    ),
                                  );
                                }),
                            Text('${widget.works[0]['items'][index]["item"]}', textAlign: TextAlign.start, style: TextStyle(color: !isCompleted[index] ? Colors.grey : Colors.black),)
                          ],
                        ),
                      ),
                    );
                  }
              );
            }, fallbackBuilder: (BuildContext context) {
              return Container();
        })

      ],
    );
  }
}
