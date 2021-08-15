import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/provider/provider.dart';

import 'model/data_ingredient.dart';

Widget cartPay(int ind, int index,BuildContext context) {
        Ingredient ingredient = comboList[ind].ingredient[index];
        return ListTile(
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
            );
}