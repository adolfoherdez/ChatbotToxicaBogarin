import 'package:chatsex_bogarin/screen/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColors: 2).theme(),
      home: const ChatScreen(),
    );
  }
}