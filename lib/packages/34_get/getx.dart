import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() => count++;
}

class GetXExample extends StatelessWidget {
  const GetXExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: const Text('GetX Counter Example',style: TextStyle(color: Colors.white,fontSize: 16),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: Obx(() => Text('Count: ${controller.count}',
            style: const TextStyle(fontSize: 24))),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo.shade900,
        onPressed: controller.increment,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
