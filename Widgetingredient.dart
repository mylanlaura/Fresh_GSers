import 'package:flutter/material.dart';
import 'package:untitled2/comboPage.dart';
import 'package:untitled2/details.dart';
Widget foodCard(String img, String title, String price, BuildContext context, int index) {
  return Container(
    child: FlatButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(index: index)),);},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                img,
                height: 100.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "${price} k",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
Widget comboCard(String img, String title, BuildContext context, int index) {
  return Container(
    child: FlatButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ComboPage(index: index)),);},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                img,
                height: 100.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}