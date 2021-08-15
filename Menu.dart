import 'package:flutter/material.dart';
import 'package:untitled2/CartPage.dart';
import 'package:untitled2/Widgetingredient.dart';

import 'package:untitled2/model/data_ingredient.dart';
class Menu extends StatelessWidget {

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
              )),
          actions: [
            IconButton(
                onPressed: ()=> CartPage(),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0x55d2d2d2),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search... ",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20.0),
                          ),
                        )),
                    RaisedButton(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFfc6a26),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    children: List.generate(ingredientList.length, (index){
                      return Container(
                          child: foodCard(ingredientList[index].image, ingredientList[index].name, ingredientList[index].price, context, index)
                      );
                    })
                ),
              ),

            ],
          )
          ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFfcfcfc),
        elevation: 0.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("Our Shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}