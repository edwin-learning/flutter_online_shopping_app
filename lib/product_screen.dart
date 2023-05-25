import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shopping_app/product_specification_pop_up.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  List<String> imageList = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 430,
                    autoPlay: false,
                    imagesLink: imageList,
                    isAssets: true,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Warm Zipper",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hodded Jacket, ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\$300.99",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFFE95858),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.only(right: 4.0),
                  itemSize: 30,
                  itemBuilder: (context, _) => const Icon(
                    Icons.favorite,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  "Coot, windy weather is on its way, Send him out the door in a jacket he wants to wear. Warm Zooper Hooded Jacket.",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0x1F989797),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    ProductSpecificationPopUp(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
