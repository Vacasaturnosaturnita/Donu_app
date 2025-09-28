// lib/pages/cart_page.dart
// REEMPLAZA TODO TU ARCHIVO CON ESTE CÓDIGO

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos 'watch' para que la UI se reconstruya con cada cambio
    var cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Tu Carrito")),
      body: cart.items.isEmpty
          ? const Center(child: Text("El Carrito está Vacío"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return ListTile(
                        leading: Image.asset(item.image, width: 50, height: 50, fit: BoxFit.contain),
                        title: Text(item.flavor),
                        subtitle: Text("\$${item.price} c/u"),
                        
                        // ===== CAMBIO PRINCIPAL AQUÍ =====
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min, // Para que la fila no ocupe todo el espacio
                          children: [
                            // BOTÓN DE RESTAR (-)
                            IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () {
                                // Llama a la nueva función para decrementar
                                cart.removeSingleItem(item);
                              },
                            ),
                            
                            // TEXTO CON LA CANTIDAD
                            Text(
                              item.quantity.toString(),
                              style: const TextStyle(fontSize: 18),
                            ),

                            // BOTÓN DE SUMAR (+)
                            IconButton(
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: () {
                                // Reutilizamos la función 'addItem' que ahora es más inteligente
                                cart.addItem(item);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // --- SECCIÓN DEL TOTAL Y PAGO (SIN CAMBIOS) ---
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        "Total: \$${cart.totalPrice.toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("¡Pago realizado con éxito!")),
                          );
                          cart.clearCart();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15)
                        ),
                        child: const Text("Pagar Ahora"),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
