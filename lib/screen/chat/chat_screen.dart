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
          backgroundImage: NetworkImage('https://scontent.felp1-1.fna.fbcdn.net/v/t39.30808-6/515631144_25021507870769496_6587686093632498510_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=0b6b33&_nc_eui2=AeF4zHvNAiH3dxda9KGjUbmxI_XZatlrd9Aj9dlq2Wt30Nwaaw5WZzpwThYe2Jn0tNrlZR3oQIonjBnuJLg1Sqaf&_nc_ohc=_ksL8CEE6cAQ7kNvwEWNvCM&_nc_oc=AdkY4n8j5fgwfgfjgdfUcsB_3rwaXt2RkMw0QFkjhqrPH9SxisF0OI2puuYtvDVKaj8&_nc_zt=23&_nc_ht=scontent.felp1-1.fna&_nc_gid=UgA-oPpa6zi3p3ZPGYBXnA&oh=00_AfeSJIpIEAzbku81bJZmzdQQMngDF8_sZRWzpnGCqFZbBg&oe=68EA4B94'),
        ),
      ),
      body: ChatView(),
    );
  }
}