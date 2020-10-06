import 'package:flutter/material.dart';
import 'package:flutter_food_app/models/list_dish.dart';

class DishItem extends StatelessWidget {
  final ListOfDishes item;

  const DishItem({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(
          right: 20.0,
          top: 35.0,
          bottom: 20.0,
        ),
        padding: EdgeInsets.only(
          top: 80.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(60.0),
        ),
        child: Column(
          children: [
            Text(
              item.dishName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              item.dishDescription,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              item.dishPrice,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      // Image
      Positioned(
        top: 5.0,
        left: 0.0,
        right: 0.0,
        child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  color: Colors.grey[400],
                )
              ],
            ),
            child: Image.asset(
              item.dishImage,
            )),
      ),

      Positioned(
        bottom: -10.0,
        left: 50.0,
        child: IconButton(
          iconSize: 40.0,
          onPressed: () {},
          icon: Icon(
            Icons.add_circle,
            color: Colors.black,
          ),
        ),
      ),
    ]);
  }
}