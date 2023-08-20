import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController{

  final TextEditingController nameController = TextEditingController();

  var writedata = "".obs;



  saveData(){
   writedata.value = nameController.text;
   update();
  }




}