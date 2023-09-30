import 'package:go_router/go_router.dart';
import 'package:shop_app/views/cart.dart';
import 'package:shop_app/views/home.dart';
import 'package:shop_app/views/login.dart';

import 'contants.dart';


GoRouter router(){
  return GoRouter(
    initialLocation: loginRoute,
    routes: [
      GoRoute(path: loginRoute, builder: ((context, state) => const Login())),
       GoRoute(path: home, builder: ((context, state) => const Home())),
       GoRoute(path: cart, builder: ((context, state) => const Cart())),
    ]
  );
}