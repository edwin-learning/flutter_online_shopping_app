import 'package:flutter/material.dart';
import 'package:flutter_online_shopping_app/container_button.dart';

class ProductSpecificationPopUp extends StatelessWidget {
  final tStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 19,
  );

  final tStyle2 = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size:",
                            style: tStyle,
                          ),
                          const SizedBox(height: 35),
                          Text(
                            "Color:",
                            style: tStyle,
                          ),
                          const SizedBox(height: 35),
                          Text(
                            "Total:",
                            style: tStyle,
                          ),
                          const SizedBox(height: 35),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Center(
                                    child: Text("S", style: tStyle2),
                                  )),
                              const SizedBox(width: 25),
                              Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child:
                                      Center(child: Text("M", style: tStyle2))),
                              const SizedBox(width: 25),
                              Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child:
                                      Center(child: Text("L", style: tStyle2))),
                              const SizedBox(width: 25),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                child:
                                    Center(child: Text("XL", style: tStyle2)),
                              ),
                              const SizedBox(width: 30),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                              const SizedBox(width: 25),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                              const SizedBox(width: 25),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.indigoAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                              const SizedBox(width: 25),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.greenAccent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                child: Center(child: Text("-", style: tStyle)),
                              ),
                              const SizedBox(width: 5),
                              Text("10", style: tStyle),
                              const SizedBox(width: 5),
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                child: Center(child: Text("+", style: tStyle)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment:", style: tStyle),
                      const Text(
                        "\$400.59",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ContainerButton(
                      containerWidth: MediaQuery.of(context).size.width,
                      text: "Checkout",
                    bgColor: Colors.redAccent,
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButton(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        text: "Buy Now",
        bgColor: Colors.redAccent,
      ),
    );
  }
}
