import 'package:flutter/material.dart';
import 'package:flutter_online_shopping_app/container_button.dart';
import 'package:flutter_online_shopping_app/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/image2.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.white,
              size: 200,
            ),
            const SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const ContainerButton(
                containerWidth: 200,
                text: "Shop Now",
                bgColor: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
