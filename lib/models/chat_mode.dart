class ChatModel {
  String? image;
  String? name;
  String? lastMessage;
  ChatModel({
    required this.image,
    required this.lastMessage,
    required this.name,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    image: 'assets/images/splash.png',
    lastMessage: 'This is the last message which is received or sent',
    name: 'Khalid alyahya',
  ),
  ChatModel(
    image: 'assets/images/splash.png',
    lastMessage: 'This is the last message which is received or sent',
    name: 'faisal alhamdan',
  ),
  ChatModel(
    image: 'assets/images/splash.png',
    lastMessage: 'This is the last message which is received or sent',
    name: 'Mohanad aldalbahi',
  ),
  ChatModel(
    image: 'assets/images/splash.png',
    lastMessage: 'This is the last message which is received or sent',
    name: 'Abdulmalik altammami',
  ),
];
