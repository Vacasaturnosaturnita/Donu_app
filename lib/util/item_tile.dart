import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class ItemTile extends StatelessWidget {
  final String itemFlavor;
  final String itemPrice;
  final itemColor;
  final String imageName;
  final String itembrand;

  final double borderRadius = 12;

  const ItemTile({
    super.key,
    required this.itemFlavor,
    required this.itemPrice,
    required this.itemColor,
    required this.imageName,
    required this.itembrand,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: itemColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: itemColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$$itemPrice",
                    style: TextStyle(
                      color: itemColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(imageName),
            ),

            // flavor
            Text(
              itemFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 4),
            Text(itembrand, style: TextStyle(color: Colors.grey[600])),

            // botones
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),

                  GestureDetector(
                    onTap: () {
                      Provider.of<CartModel>(context, listen: false).addItem(
                        CartItem(
                          flavor: itemFlavor,
                          price: itemPrice,
                          color: itemColor,
                          image: imageName,
                          brand: itembrand,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("$itemFlavor Added to Cart")),
                      );
                    },
                    child: Icon(Icons.add, color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
