import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxclass/controller/app_controller.dart';
import 'package:getxclass/screen/four_page.dart';
import 'package:getxclass/screen/second_page.dart';
import 'package:getxclass/screen/third_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppController());
    final appControllerdata  = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("First page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // GetBuilder<AppController>(
            //   init: AppController(),
            //     builder: ( AppController con){
            //
            //       return  Text(
            //         "${con.writedata.value ?? ""}",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 25,
            //             color: Colors.black),
            //       );
            //
            //
            //     },
            // ),
            Obx(() => Text(
              "${appControllerdata.writedata.value ?? ""}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ) ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: appControllerdata.nameController,
                decoration: const InputDecoration(
                    hintText: "Please Enter your name",
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                appControllerdata.saveData();
                print("${appControllerdata.nameController.text}");
              },
              child: Text("Save"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondPage());
              },
              child: Text("2nd page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(ThirdPage());
              },
              child: Text("3rd page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(FourPage());
              },
              child: Text("Four page"),
            ),
          ],
        ),
      ),
    );
  }
}
