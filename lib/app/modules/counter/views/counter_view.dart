import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bilangan Ke'), // Menambahkan const
            Obx(
              () => Text(
                controller.bilangan.toString(),
                style: const TextStyle(fontSize: 24), // Menambahkan style untuk teks
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                controller.tambahSatu();
              },
              child: const Text('Tambah Satu'),
            )
          ],
        ),
      ),
    );
  }
}