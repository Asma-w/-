import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/views/widgets/common_button.dart';
import 'package:moajeer/views/widgets/common_textfield.dart';

class CustomerForgotPage extends StatelessWidget {
  CustomerForgotPage({super.key});
  final TextEditingController emailController = TextEditingController();
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
                'Recover Password',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                'Please enter your email to recover password...',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 11),
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
              CommonButton(
                text: 'Submit',
                onTap: () {},
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
