import 'package:flutter/material.dart';

class Item{
 final String name;
 final Color color;
 final int id;
 final int price = 50;

 Item(this.id, this.name, ): color =Colors.primaries[id % Colors.primaries.length];


@override
int get hashCode => id;

@override
bool operator ==(Object object) => object is Item && object.id == id;


}