import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'Widgetingredient.dart';
import 'model/data_ingredient.dart';

class SuperMarket extends StatefulWidget{
  @override
  _SuperMarketState createState() => _SuperMarketState();
}

class _SuperMarketState extends State<SuperMarket> {
  late String email, password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
        backgroundColor: Color.fromRGBO(116, 233, 149, 1.0),
      leading: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: BackButton(
          color: Colors.grey[600],
        ),
      ),
      ),

      body: Stack(
        key: formkey,
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.8,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  decoration: BoxDecoration(color: Colors.white,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Menu",
                            style: TextStyle(color: Colors.red, fontSize: MediaQuery
                                .of(context)
                                .size
                                .height / 20,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        child: GridView.count(
                            crossAxisCount: 2,
                            //let's change the aspect ration for the child card
                            childAspectRatio: 0.7,
                            children: List.generate(comboList.length, (index){
                              return Container(
                                  child: comboCard(comboList[index].image, comboList[index].name, context, index)
                              );
                            })
                        ),
                      ),
                    ],
                  ),
                ),
              ))

        ],
      ),
    );
  }
}