import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/views/pages/customer/root/root_page.dart';
import 'package:moajeer/views/widgets/common_button.dart';
import 'package:moajeer/views/widgets/common_textfield.dart';

import 'customer_forgot_page.dart';
import 'customer_register_page.dart';

class CustomerLoginPage extends StatelessWidget {
  CustomerLoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Customer Login',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonTextField(
                hintText: 'Email',
                controller: emailController,
                onChanged: (onChanged) {},
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: Get.height * 0.02),
              CommonTextField(
                isObscure: true,
                hintText: 'Password',
                controller: passwordController,
                onChanged: (onChanged) {},
                validator: (value) {
                  return null;
                },
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => CustomerForgotPage());
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              CommonButton(
                text: 'Login',
                onTap: () {
                  Get.offAll(() => const RootPage());
                },
              ),
              Align(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => CustomerRegisteerPage());
                  },
                  child: Text(
                    'Don\'t have an account? Register',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
