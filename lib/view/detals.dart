import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:store_app/controller/homecontroller.dart';
import 'package:store_app/view/models/prodact.dart';
import 'package:store_app/view/screen.dart';

class detals extends StatelessWidget {
  homecontroller controller = Get.find();
  Map prodact = {};

  detals({required this.prodact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_sharp,
                color: Theme.of(context).colorScheme.primary)),
        title: Text(
          "رجوع",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Container(
        width: width(context),
        height: height(context),
        color: Theme.of(context).colorScheme.primary,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: width(context),
                height: height(context) * 0.6,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
            ),
            Positioned(
              top: height(context) * 0.06,
              child: Container(
                alignment: Alignment.center,
                width: width(context) * 0.4,
                height: height(context) * 0.3,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(width(context))),
              ),
            ),
            Positioned(
              top: height(context) * 0.06,
              child: Container(
                width: width(context) * 0.4,
                height: height(context) * 0.3,
                child: Image.asset(prodact["image"]),
              ),
            ),
            Positioned(
              top: height(context) * 0.42,
              left: width(context) * 0.45,
              child: Container(
                height: width(context)*0.03,
                width: width(context)*0.03,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(width(context))
                ),
              ),
              ),Positioned(
              top: height(context) * 0.42,
              left: width(context) * 0.5,
              child: Container(
                height: width(context)*0.03,
                width: width(context)*0.03,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(width(context))
                ),
              ),
              ),Positioned(
              top: height(context) * 0.42,
              left: width(context) * 0.55,
              child: Container(
                height: width(context)*0.03,
                width: width(context)*0.03,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(width(context))
                ),
              ),
              ),
            Positioned(
              top: height(context) * 0.47,
              right: width(context) * 0.1,
              child: Text(prodact["title"],style: TextStyle(color: Theme.of(context).colorScheme.tertiaryContainer,fontWeight: FontWeight.bold,fontSize: 16),)
              ),
            Positioned(
              top: height(context) * 0.51,
              right: width(context) * 0.1,
              child: Text("السعر: ${prodact["price"]}\$",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold,fontSize: 14),)
              ),
            Positioned(
              top: height(context) * 0.63,
              child: Container(
                padding: EdgeInsets.all(20),
                  width: width(context),
                  child: Text(prodact["description"],style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 14),))
              ),
          ],
        ),
      ),
    );
  }
}