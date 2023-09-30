import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model.dart';
import 'package:shop_app/models/catalog.dart';
import 'package:shop_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=> CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
           update: (context, catalog, cart){
          if (cart == null ) throw ArgumentError.notNull("cart");
          cart.catalogModel= catalog;
          return cart;
        })
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routerConfig: router(),
    
      ),
    );
  }
}
