import 'package:chatsex_bogarin/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{
  final List<Message> messageList=[
    Message(
      text: "Hola, como estas?", 
      imageUrl: "https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif", 
      fromWho: FromWho.hers,
    ),
    Message(
      text: "hola, me amas?", 
      fromWho: FromWho.me,
      imageUrl: "", 
      ),
    Message(
      text: "Al cienon viejon", 
      fromWho: FromWho.hers,
      imageUrl: "https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif",
      ),
    Message(
      text: "Algo bien padrino", 
      fromWho: FromWho.me,
      imageUrl: "",
      ),
  ];

  Future<void> sendMessage(String message) async{
    final newMessage = Message(text: message, fromWho: FromWho.me, imageUrl: "",);
    messageList.add(newMessage);
    notifyListeners();
  }
}