import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget{
  final CrossAxisAlignment alignment;
  final Color colorBubble;
  final Widget child;

  const MessageBubble({
    super.key,
    required this.alignment,
    required this.child,
    required this.colorBubble,
  });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorBubble,
            borderRadius: BorderRadius.circular(20)
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: child,
        ),
        )
        const SizedBox(height: 10),

      ],
      if (urlImageBubble != null)...[
        ImageBubble(imageUrl: urlImageBubble!),
        const SizedBox(height: 10,)
      ]
    );
  }
}