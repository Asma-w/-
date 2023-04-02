import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/pages/admin/home/admin_home_page.dart';
import 'package:moajeer/views/pages/admin/profile/admin_profile_page.dart';

class AdminRootPage extends StatefulWidget {
  const AdminRootPage({super.key});

  @override
  State<AdminRootPage> createState() => _AdminRootPageState();
}

class _AdminRootPageState extends State<AdminRootPage> {
  int selectedIndex = 0;
  final _pages = [
    AdminHomePage(),
    AdminProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(child: _pages[selectedIndex]),
            SizedBox(
              height: Get.height * 0.06,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    bottomNav(Icons.home, 'Home', 0),
                    bottomNav(Icons.person, 'Profile', 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav(IconData icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color:
                index == selectedIndex ? ColorClass.primaryColor : Colors.grey,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: index == selectedIndex
                  ? ColorClass.primaryColor
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
