import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/contants.dart';

import '../components/cart_list.dart';
import '../components/cart_total.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){
          context.pushReplacement(home);
        },
        ),
        title: const Text("Cart", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight:FontWeight.bold),),
        backgroundColor: primaryColor,
      ),
      bottomSheet: const CartTotal(),
     body: const Column(
      children: [
      Expanded(child: CartList()),

     ]),
    );
  }
}