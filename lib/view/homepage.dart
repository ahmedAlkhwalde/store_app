import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:store_app/controller/homecontroller.dart';
import 'package:store_app/view/detals.dart';
import 'package:store_app/view/models/prodact.dart';
import 'package:store_app/view/screen.dart';

class homepage extends StatelessWidget {
  homecontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(
          "مرحباً بكم في متجر الإلكترونيات",
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.secondary,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ),
                ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) => Container(
                    // color: Theme.of(context).colorScheme.secondary,
                    height: 190,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        Get.to(detals(prodact: controller.products[index],));
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 160,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 15),
                                        blurRadius: 25,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryContainer)
                                  ])),
                          Positioned(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: 200,
                                height: 166,
                                child: Image.asset(
                                  controller.products[index]["image"],
                                )),
                            top: 0,
                            left: 0,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 15,
                              child: SizedBox(
                                height: 130,
                                width: width(context) - 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Text(
                                      controller.products[index]["title"],
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      controller.products[index]["subTitle"],
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                          fontSize: 14),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 5),
                                      height: 20,
                                      width: width(context) * 0.2,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                          "السعر: ${controller.products[index]["price"]}\$",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiaryContainer,
                                              fontSize: 14)),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
