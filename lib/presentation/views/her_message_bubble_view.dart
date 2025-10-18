import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/presentation/widgets/message_bubble.dart';

class HerMessageBubbleView extends StatelessWidget{
  final ColorScheme colorScheme;
  final String urlImageBubble;
  const HerMessageBubbleView({
    super.key,
    required this.colorScheme,
    required this.urlImageBubble,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: null,
      urlImageBubble: urlImageBubble,
      );
  }
}