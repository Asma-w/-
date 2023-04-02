import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moajeer/views/pages/authentication/admin_auth/admin_login_page.dart';
import 'package:moajeer/views/pages/authentication/store_auth/store_login_page.dart';
import 'package:moajeer/views/widgets/common_button.dart';

import 'customer_auth/customer_login_page.dart';

class ChoosePanelPage extends StatelessWidget {
  const ChoosePanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonButton(
                onTap: () {
                  Get.to(() => AdminLoginPage());
                },
                text: 'Login as Admin',
              ),
              SizedBox(height: Get.height * 0.06),
              CommonButton(
                onTap: () {
                  Get.to(() => StoreLoginPage());
                },
                text: 'Login as Store',
              ),
              SizedBox(height: Get.height * 0.06),
              CommonButton(
                onTap: () {
                  Get.offAll(() => CustomerLoginPage());
                },
                text: 'Login as Customer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
