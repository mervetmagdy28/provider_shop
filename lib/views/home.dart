import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/contants.dart';

import '../components/list_items.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: primaryColor,
            title: const Text("Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
            actions: [
              IconButton(onPressed: (){
                context.go(cart);
              }, icon:const  Icon(Icons.shopping_cart, color: Colors.black,))
            ],
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10),),
          SliverList(delegate: SliverChildBuilderDelegate((context, index)=>ListItems(index)),)
        ],
      ),
    );
  }
}