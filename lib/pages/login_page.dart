import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(onTap: () {}, text: "Sign In"),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Not a member ?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Register now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
