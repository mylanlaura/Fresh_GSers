import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/model/data_ingredient.dart';
import 'package:untitled2/provider/provider.dart';

class ComboPay extends StatelessWidget {
  final int ind;
  ComboPay({required this.ind});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(116, 233, 149, 1.0),
        title: Text('Fresh'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),),
        body: ListView.builder(itemCount: comboList[ind].ingredient.length, itemBuilder:(context, index){
          Ingredient ingredient = comboList[ind].ingredient[index];
          return Card(
            child: ListTile(
              title: Text(ingredient.name),
              leading: Image.network(ingredient.image),
              trailing:  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  IconButton(onPressed: (){
                    Provider.of<MyProvider>(context, listen: false)
                .increaseAmountOfFood();}, icon: Icon(Icons.add)),
              Consumer<MyProvider>(
                  builder: (context, numbersOfOrders, child) {
                    return Text(
                      numbersOfOrders.amountOfFood.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.grey[900],
                      ),
                    );
                  }),
            IconButton(onPressed: (){
              Provider.of<MyProvider>(context, listen: false)
                  .decreaseAmountOfFood();}, icon: Icon(Icons.remove)),]
            ),
          ));
        })
      );
  }
}