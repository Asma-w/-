import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moajeer/constants/colors.dart';
import 'package:moajeer/models/chat_mode.dart';
import 'package:moajeer/models/message_model.dart';
import 'package:moajeer/views/widgets/common_textfield.dart';

// ignore: must_be_immutable
class MessagesPage extends StatefulWidget {
  MessagesPage({
    super.key,
    required this.chat,
  });
  ChatModel chat;
  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        // title: Text(widget.chat.name!),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height * .9,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .8,
                    child: ListView.builder(
                      itemCount: messageModels.length,
                      itemBuilder: (context, index) {
                        return Align(
                            alignment: messageModels[index].isSentByMe
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: IntrinsicWidth(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 100, maxWidth: 200),
                                  decoration: BoxDecoration(
                                      color: messageModels[index].isSentByMe
                                          ? const Color(0xff05D3E5)
                                          : const Color(0xffE9E9E9),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8,
                                            left: 8,
                                            bottom: 8,
                                            right: 3),
                                        child: Text(
                                          messageModels[index].text,
                                          style: TextStyle(
                                              color: messageModels[index]
                                                      .isSentByMe
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 12,
                                              height: 1.2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.8,
                          child: CommonTextField(
                            controller: messageController,
                            hintText: 'Enter your message',
                            onChanged: (value) {},
                            validator: (vlaue) {
                              return;
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              // MessageModel(
                              //     text: messageController.text, isSentByMe: true);
                            });
                          },
                          icon: const Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
