import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/views/widgets/common_button.dart';

class StoreEquipmentPage extends StatelessWidget {
  const StoreEquipmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: Text(
          'Request Equipment',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 8),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(width: 10),
                            Text(
                              "you have received a request from a customer please accept or reject.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            //if shopkeeper click accept then it show the handover button
                            Row(
                              children: [
                                Expanded(
                                  child: CommonButton(
                                    text: 'Accept ',
                                    onTap: () {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: CommonButton(
                                    text: 'Reject ',
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            //before the accept this color should be grey when customer return equipment then it should primary color
                            CommonButton(
                              text: 'Hand Over Equipment ',
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            //before the accept this color should be grey when customer return equipment then it should primary color
                            CommonButton(
                              text: 'Accept Return',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
