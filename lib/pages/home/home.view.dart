
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/main.controller.dart';
import 'package:getx_test/pages/page2/page2.view.dart';


class HomePage extends StatelessWidget {
  String title = "Home Page";
  HomePage({title=""});
  MainController c = Get.find<MainController>();
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
            Obx(() =>  Text(
              c.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),),
            ElevatedButton(onPressed: (){
              Get.to(Page2());
            }, child: const Text("next page"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

