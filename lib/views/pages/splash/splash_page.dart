import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moajeer/constants/images.dart';
import 'package:moajeer/views/pages/authentication/choose_panel.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),
        () => Get.offAll(() => const ChoosePanelPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Image.asset(
              ImagesClass.splash,
              height: Get.height,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
