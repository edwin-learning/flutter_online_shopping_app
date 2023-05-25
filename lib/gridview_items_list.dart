import 'package:flutter/material.dart';
import 'package:flutter_online_shopping_app/product_screen.dart';

class GridViewItemsList extends StatelessWidget {
  List<String> imageList = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  List<String> productTitles = [
    "Warm Zipper",
    "Knitted woo!",
    "Zipper Win",
    "Child WIn",
  ];

  List<String> productPrices = [
    "\$300",
    "\$200",
    "\$350",
    "\$499",
  ];

  GridViewItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
          itemCount: 4,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.6,
            crossAxisSpacing: 30,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductScreen(),
                                ));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(imageList[index]),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xFFE95858),
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    productTitles[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    productPrices[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFFE95858),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
