import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model.dart';

import '../models/item.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    var isInCart = context.select<CartModel, bool>((cart)=> cart.items.contains(item));
    return  TextButton(onPressed: isInCart?null : (){
    context.read<CartModel>().add(item);
    }, child: isInCart?const Icon(Icons.check):const Text("add", style: TextStyle(fontSize: 18),));
  }
}