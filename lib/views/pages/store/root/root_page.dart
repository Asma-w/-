import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/pages/store/chat/store_chat_page.dart';
import 'package:moajeer/views/pages/store/inventory/store_inventory_page.dart';
import 'package:moajeer/views/pages/store/store_equipment/store_equipment_page.dart';
import 'package:moajeer/views/pages/store/profile/store_profile_page.dart';

import '../home/store_home_page.dart';

class StoreRootPage extends StatefulWidget {
  const StoreRootPage({super.key});

  @override
  State<StoreRootPage> createState() => _StoreRootPageState();
}

class _StoreRootPageState extends State<StoreRootPage> {
  int selectedIndex = 0;
  final _pages = [
    StoreHomePage(),
    StoreInventoryPage(),
    StoreChatPage(),
    const StoreEquipmentPage(),
    const StoreProfilePage(),
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
            Container(
              padding: const EdgeInsets.all(12),
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 12)
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bottomNav(Icons.home, 'Home', 0),
                    bottomNav(Icons.inventory, 'My Inventory', 1),
                    bottomNav(Icons.chat, 'Chats', 2),
                    bottomNav(Icons.inventory_rounded, 'Requests', 3),
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
