import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/catalog.dart';

import 'add_button.dart';

class ListItems extends StatelessWidget {
  const ListItems(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getById(index);
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
          BoxShadow(color:  Colors.grey, offset: Offset(-5,-5), blurRadius: 5 ),
          BoxShadow(color:  Colors.white),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           AspectRatio(aspectRatio: 1,child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color :item.color
            ),
           ),
           
           ),
          Text(item.name, style: TextStyle(fontSize: 20),),
           AddButton(item: item,),
        ]),
      ),
    );
  }
}