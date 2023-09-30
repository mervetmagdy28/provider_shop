import 'package:flutter/material.dart';
import 'package:shop_app/models/catalog.dart';

import 'item.dart';

class CartModel extends ChangeNotifier{
  late CatalogModel catalogModel;

  final List<int> listOfItems = [];

  CatalogModel get catalog => catalogModel;

  set catlog(CatalogModel catalog){
    catalogModel = catalog;
    notifyListeners();
  }

  List<Item> get items => listOfItems.map((id)=> catalogModel.getById(id)).toList();

  int get totalPrice => items.fold(0, (total, current) => total+ current.price);


  void add(Item item){
    listOfItems.add(item.id);
    notifyListeners();
  }

   void remove(Item item){
    listOfItems.remove(item.id);
    notifyListeners();
  }
}