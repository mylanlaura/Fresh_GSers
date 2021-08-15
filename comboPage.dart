import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/provider/provider.dart';

import 'CartPage.dart';
import 'comboPay.dart';
import 'model/data_ingredient.dart';

class ComboPage extends StatelessWidget {
  final int index;
  ComboPage({required this.index});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Food delivery'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: BackButton(
            color: Colors.grey[600],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0, top: 16),
            child: Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(116, 233, 149, 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 22,
                      width: 22,
                      child: Center(
                        child: Consumer<MyProvider>(
                            builder: (context, numberOfOrders, child) {
                              return Text(
                                numberOfOrders.ordersNumber.toString(),
                                style: TextStyle(color: Colors.black),
                              );
                            }),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://github.com/Abdullah-Zakhoi/food_delivery_flutter_ui/blob/master/images/cart%20icon2.png?raw=true',
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              comboList[index].image,
              height: 300,
              width: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Color.fromRGBO(116, 233, 149, 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Provider.of<MyProvider>(context, listen: false)
                            .decreaseAmountOfFood();
                      },
                      child: Icon(
                        Icons.remove,
                        size: 28,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
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
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<MyProvider>(context, listen: false)
                            .increaseAmountOfFood();
                      },
                      child: Icon(
                        Icons.add,
                        size: 28,
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(

                          comboList[index].name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: [
                      Icon(Icons.star_half_outlined, color: Colors.amber,),
                      Text(
                        comboList[index].stars,

                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),

                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    comboList[index].describeFood,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ComboPay(ind: index)));},
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
  }