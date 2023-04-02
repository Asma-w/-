import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/models/search_equipment_model.dart';

class SelectEquipmentPage extends StatefulWidget {
  const SelectEquipmentPage({
    super.key,
    required this.equipment,
  });
  final SearchEquipmentModel equipment;

  @override
  State<SelectEquipmentPage> createState() => _SelectEquipmentPageState();
}

class _SelectEquipmentPageState extends State<SelectEquipmentPage> {
  DateTime now = DateTime.now();
  DateTime now1 = DateTime.now();
  bool isPending = false;
  bool isTakeOver = false;
//select date function
  void _selectDate() async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != now) {
      setState(() {
        now = selected;
      });
    }
  }

  void _endselectDate() async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: now1,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != now1) {
      setState(() {
        now1 = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: Text(
          'Make Request',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.equipment.image!,
                  height: Get.height * 0.2,
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                widget.equipment.title!,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    widget.equipment.price!,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'From',
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  Text(
                    'To',
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _selectDate,
                    child: Text(
                      DateFormat('MMMM dd, yyyy').format(now),
                    ),
                  ),
                  IconButton(
                    onPressed: _selectDate,
                    icon: const Icon(Icons.calendar_month),
                  ),
                  GestureDetector(
                    onTap: _endselectDate,
                    child: Text(
                      DateFormat('MMMM dd, yyyy').format(now1),
                    ),
                  ),
                  IconButton(
                    onPressed: _endselectDate,
                    icon: const Icon(Icons.calendar_month),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '\$100 per day',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                widget.equipment.description!,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPending = true;
                  });
                },
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width * 1,
                  decoration: BoxDecoration(
                    color: isPending ? Colors.grey : ColorClass.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Request equipment',
                      style: GoogleFonts.poppins(
                        color: isPending ? Colors.black : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              isPending
                  ? Text(
                      'Status: Approved',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  : const SizedBox(),
              SizedBox(height: Get.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  rating() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Done'),
            ),
          ],
          title: Center(
            child: Text(
              'Rating to Store',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          content: SizedBox(
            height: Get.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                )
              ],
            ),
          ),
        ),
      );
}
