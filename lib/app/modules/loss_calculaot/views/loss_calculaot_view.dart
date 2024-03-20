import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loss_calculaot_controller.dart';

class LossCalculaotView extends GetView<LossCalculaotController> {
  const LossCalculaotView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LossCalculaotView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LossCalculaotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
