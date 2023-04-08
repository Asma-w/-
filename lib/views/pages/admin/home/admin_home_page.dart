import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/pages/admin/home/all_customers/all_customers_page.dart';
import 'package:moajeer/views/pages/admin/home/all_stores/all_stores_page.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int selectedIndex = 0;
  final _pages = [
    AllStoresPage(),
    AllCustomersPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: SizedBox(
                  height: Get.height * 0.06,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bottomNav('All Stores', 0),
                        bottomNav('All Customers', 1),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: _pages[selectedIndex]),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNav(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
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
