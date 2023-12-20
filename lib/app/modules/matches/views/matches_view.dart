import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/matches_controller.dart';

class MatchesView extends GetView<MatchesController> {
  const MatchesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MatchesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MatchesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
