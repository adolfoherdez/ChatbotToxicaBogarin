import 'package:chatsex_bogarin/domain/entities/message.dart';
import 'package:chatsex_bogarin/presentation/widgets/message_field_box.dart';
import 'package:chatsex_bogarin/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/presentation/views/her_message_bubble_view.dart';
import 'package:chatsex_bogarin/presentation/views/my_message_bubble_view.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget{
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (context, index) {
                  return chatProvider.messagesList[index].fromWho == FromWho.hers
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messagesList[index], urlImageBubble: '',
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messagesList[index].text,
                        );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: MessageFieldBox(
              onvalue: (String value) => chatProvider.sendMessage(value),
          ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}