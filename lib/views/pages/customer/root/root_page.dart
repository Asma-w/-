import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/pages/customer/home_page.dart';
import 'package:moajeer/views/pages/customer/root/chat/chat_page.dart';
import 'package:moajeer/views/pages/customer/root/inventory/inventory_page.dart';
import 'package:moajeer/views/pages/customer/root/request_equipment/request_equipment_page.dart';
import 'package:moajeer/views/pages/customer/root/profile/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;
  final _pages = [
    HomePage(),
    InventoryPage(),
    const ChatPage(),
    const RequestEquipment(),
    const ProfilePage(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bottomNav(Icons.home, 'Home', 0),
                    bottomNav(Icons.inventory, 'Currently rented', 1),
                    bottomNav(Icons.chat, 'Chats', 2),
                    bottomNav(Icons.add, 'Requested', 3),
                    bottomNav(Icons.person, 'Profile', 4),
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
                index == selectedIndex ? ColorClass.primaryColor : Colors.black,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: index == selectedIndex
                  ? ColorClass.primaryColor
                  : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
