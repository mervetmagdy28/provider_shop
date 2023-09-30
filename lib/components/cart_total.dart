import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../contants.dart';
import '../models/cart_model.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<CartModel>(builder:(context, cart, child)=> Text("\$${cart.totalPrice}", style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
        ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("not Supported yet. "))
              );
            },  style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor
            ),child: const Text("Buy"),)
      ],
    );
  }
}