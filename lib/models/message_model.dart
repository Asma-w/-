class MessageModel {
  final String text;

  final bool isSentByMe;
  MessageModel({
    required this.text,
    this.isSentByMe = false,
  });
}

List<MessageModel> messageModels = [
  MessageModel(text: 'اهلاً تم قبول طلبك', isSentByMe: false),
  MessageModel(text: 'يعطيكم العافية ممكن ترسل لي موقعكم؟', isSentByMe: true),
  MessageModel(
      text: 'https://goo.gl/maps/mekYRs4wsEm3CRdQ6', isSentByMe: false),
];
