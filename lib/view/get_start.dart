import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:store_app/view/homepage.dart';
import 'package:store_app/view/screen.dart';


class get_start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // homecontroller controller = Get.find();
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Container(
              width: width(context),
              height: height(context)*0.6,
              decoration: BoxDecoration(
                color: Color(0xff2C9DBA),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
              ),
              child: Center(child: Image.asset("images/class.png"),),
            ),
            Stack(
              children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: width(context),
                      height: height(context)*0.4,
                      decoration: BoxDecoration(
                        color: Color(0xff2C9DBA),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: width(context),
                  height: height(context)*0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Learning is Everything",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      Column(
                        children: [
                          Text("Learning with Pleasure with Dear",style: TextStyle(color: Colors.grey,fontSize: 15),),
                          Text("Programmer ,Wherever you are",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],
                      ),
                      MaterialButton(onPressed: () {
                        Get.offAll(homepage());
                      },
                        child:  Container(
                          alignment: Alignment.center,
                          width: width(context)*0.5,
                          height: height(context)*0.07,
                          decoration: BoxDecoration(
                            color: Color(0xff2C9DBA),
                            borderRadius: BorderRadius.circular(20)
                          )
                        ,child: Text("Get Start",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,),)
                        )),
                    ],
                  )
                ),
              ],
            ),
          ],
        ),
    );
  }
}