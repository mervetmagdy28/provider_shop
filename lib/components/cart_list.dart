import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>();
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (context, index)=> ListTile(
      leading: const Icon(Icons.check),
      trailing: IconButton(icon: const Icon(Icons.remove_circle_outline_outlined), onPressed: (){
        cart.remove(cart.items[index]);
      },),
      title: Text(cart.items[index].name, style: const TextStyle(fontSize: 20)),
      )
    
    );
  }
}