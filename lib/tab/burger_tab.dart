import 'package:flutter/material.dart';

import '../util/item_tile.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class BurgerTab extends StatelessWidget{

  // list of donuts 
  List burgersOnSale = [
   // [ donutFlavor, donutPrice, donutColor, imageName]
    ["Cocodrile Burguer", "36", Colors.blue, "lib/images/cocodrile.png", "Loboferoz"],
    ["Normal Burguer", "45", Colors.red, "lib/images/normal burguer.png", "Loboferoz"],
    ["Invencible Burguer ", "84", Colors.purple, "lib/images/Invencible.png", "Loboferoz"],
    ["Kong Burguer", "95", Colors.brown, "lib/images/kong.png", "Loboferoz"],
  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
    itemCount: burgersOnSale.length,  
    padding: EdgeInsets.all(12),
    gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), 
    itemBuilder: (context, index) {
      return ItemTile(
        itemFlavor: burgersOnSale[index][0],
        itemPrice: burgersOnSale[index][1],
        itemColor: burgersOnSale[index][2],
        imageName: burgersOnSale[index][3],
        itembrand: burgersOnSale[index][4],
        
      );
    },
    );
  }
}