import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class DonutTab extends StatelessWidget{

  // list of donuts 
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
    ["strawberry", "36", Colors.red,"lib/images/fresa.png", "Dunkins"],
    ["blueberry", "45", Colors.red, "lib/images/mora.png", "Dunkins"],
    ["Grape", "84", Colors.purple, "lib/images/graps.png", "Dunkins"],
    ["Chocolate", "95", Colors.brown, "lib/images/chocolate.png", "Dunkins"],
  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: donutsOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: donutsOnSale[index][0],
        itemPrice: donutsOnSale[index][1],
        itemColor: donutsOnSale[index][2],
        imageName: donutsOnSale[index][3],
        itembrand: donutsOnSale[index][4],
      );
    },
    );
  }
}