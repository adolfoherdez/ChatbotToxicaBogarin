import 'package:chatsex_bogarin/presentation/screen/chat/chat_screen.dart';
import 'package:chatsex_bogarin/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColors: 2).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}