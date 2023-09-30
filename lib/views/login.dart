import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/components/custom_text_field.dart';
import 'package:shop_app/contants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image.asset(
              "assets/online-shopping.png",
              width: 200,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFiald(text: "UserName"),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFiald(text: "Password"),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              context.pushReplacement(home);
            },  style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor
            ),child: const Text("Enter"),)
          ],
        ),
      ),
    );
  }
}



/*

control 

LoginPage

addUser

model_view





*/