import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/views/widgets/common_button.dart';
import 'package:moajeer/views/widgets/common_textfield.dart';

class AdminRegisterPage extends StatelessWidget {
  AdminRegisterPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              const BackButton(),
              const Spacer(),
              Text(
                'Admin Register',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(height: Get.height * 0.02),
              CommonTextField(
                hintText: 'Full name',
                controller: nameController,
                onChanged: (onChanged) {},
                validator: (value) {
                  return null;
                },
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
              SizedBox(height: Get.height * 0.02),
              CommonTextField(
                isObscure: true,
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
                onChanged: (onChanged) {},
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: Get.height * 0.02),
              CommonButton(
                text: 'Register',
                onTap: () {},
              ),
              Align(
                child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
