import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxclass/controller/app_controller.dart';

class FourPage extends GetView<AppController> {
  const FourPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppController());
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Four page"),
      ),
      body: Center(
        child: Text("${controller.writedata.value}",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
      ),
    );
  }
}
