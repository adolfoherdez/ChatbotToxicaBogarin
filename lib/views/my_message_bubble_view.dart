import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/widgets/message_bubble.dart';

class MyMessageBubbleView extends StatelessWidget{
  final ColorScheme colorScheme;
  final String message;
  const MyMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.end,
      colorBubble: colorScheme.secondary,
      child: Text(message, style: TextStyle(color: colorScheme.onSecondary)),
      );
  }
}