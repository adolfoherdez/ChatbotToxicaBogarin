import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/presentation/widgets/message_bubble.dart';
import 'package:chatsex_bogarin/domain/entities/message.dart';

class HerMessageBubbleView extends StatelessWidget{
  final ColorScheme colorScheme;
  final String urlImageBubble;
  final  Message message;
  const HerMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.urlImageBubble,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: Text(
        message.text,
        style: TextStyle(color: colorScheme.onSecondary),
      ),
      urlImageBubble: urlImageBubble,
      );
  }
}