import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class controller extends GetxController{
  //observables
  RxInt counter = 0.obs;
  void incrementCounter() {
      counter++;
  }
}


class HomePage extends StatelessWidget {
  String title = "Home Page";
  HomePage({title=""});
  controller c = Get.put(controller());
 
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


class Page2 extends StatelessWidget {
  controller c = Get.find();
 
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