import 'package:chatsex_bogarin/views/chat_view.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Tilina'),
        centerTitle: false,
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://generacionxbox.com/wp-content/uploads/2019/02/cortana-halo-infinite-generacionxbox.jpg'),
        ),
      ),
      //const SizedBox(height: 5),
      body: ChatView(),
    );
  }
}