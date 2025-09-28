import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class SmoothieTab extends StatelessWidget{

  // list of donuts 
  List smoothiesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
    ["Azulito Smoothie", "70", Colors.green, "lib/images/azulito mix.png", "Frappesito"],
["D.R. Smoothie", "75", Colors.red, "lib/images/doctor simio.png", "Frappesito"],
["Dragon Smoothie", "85", Colors.deepPurple, "lib/images/moco dragon.png", "Frappesito"],
["Mango loco Smoothie", "95", Colors.purple, "lib/images/mango loco.png", "Frappesito"],

  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: smoothiesOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: smoothiesOnSale[index][0],
        itemPrice: smoothiesOnSale[index][1],
        itemColor: smoothiesOnSale[index][2],
        imageName: smoothiesOnSale[index][3],
        itembrand: smoothiesOnSale[index][4],
      );
    },
    );
  }
}