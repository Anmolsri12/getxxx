// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxxx/My_Controler.dart';
import 'My_Controler.dart';
import 'Total.dart';

class MyCart extends StatefulWidget {
  MyCart({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController());
  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    var c;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.red,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Book",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
              Expanded(child: Container()),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.increment(),
                  )),
              SizedBox(
                width: 10,
              ),
              Obx((() => Text(
                    "${c.books.toString()}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))),
              SizedBox(
                width: 100,
              ),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrement(),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              // ignore: prefer_const_constructors
              Text(
                "pens",
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
              Expanded(child: Container()),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.incrementpens(),
                  )),
              SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.books.toString()}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))),
              SizedBox(
                width: 20,
              ),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrementpens(),
                  ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blue),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () => Get.to(() => Total()),
                  child: Text(
                    "total",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ))
            ],
          )
        ]),
      ),
    );
  }
}
