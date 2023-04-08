import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/pages/authentication/choose_panel.dart';
import 'package:moajeer/views/widgets/common_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: ColorClass.primaryColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: Get.height * 0.08,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Mohanad',
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'mohanad@gmail.com',
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: Get.height * 0.1),
              CommonButton(
                  text: 'Log Out',
                  onTap: () {
                    Get.offAll(() => const ChoosePanelPage());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
