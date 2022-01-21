import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/main.controller.dart';

class Page2 extends StatelessWidget {
  MainController c = Get.find();
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
             Text(
              c.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: const Text("back"))
          ],
        ),
      ),
      
    );
  }
}