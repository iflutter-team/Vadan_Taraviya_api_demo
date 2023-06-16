import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

Widget productList() {
  return GetBuilder<HomeScreencontroller>(
    id: "prodect",
    builder: (controller) {
      return controller.productData != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemCount: controller.productData!.products!.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(controller.productData!
                                      .products![index].thumbnail!))),
                        ),
                      ),
                      Text(
                        controller.productData!.products![index].title
                            .toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            "${controller.productData!.products![index].price}",
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xFFff9800),
                              ),
                              Text(
                                "${controller.productData!.products![index].rating}",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator());
    },
  );
}

Widget floatingActionButtonadd() {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: Colors.blue,
    child: const Icon(
      Icons.add,
      size: 30,
    ),
  );
}
