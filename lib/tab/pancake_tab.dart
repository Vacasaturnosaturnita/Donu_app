import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class PancakeTab extends StatelessWidget{

  // list of donuts 
  List pancakesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
["Pinkypromess", "50", Colors.orange, "lib/images/pinkipromess.png", "A-roses"],
["Doble tosino", "65", Colors.blue, "lib/images/tocino doble.png", "A-roses"],
["Rey de los monstruos", "72", Colors.pink, "lib/images/rey de los monstruos.png", "A-roses"],
["Hulkeate", "90", Colors.brown, "lib/images/HULK.png", "A-roses"],
  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: pancakesOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: pancakesOnSale[index][0],
        itemPrice: pancakesOnSale[index][1],
        itemColor: pancakesOnSale[index][2],
        imageName: pancakesOnSale[index][3],
        itembrand: pancakesOnSale[index][4],
      );
    },
    );
  }
}