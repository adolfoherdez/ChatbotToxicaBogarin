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
                itemCount: chatProvider.messageList.length,
                //itemCount: 6,
                itemBuilder: (context, index) {
                  return chatProvider.messageList[index].fromWho == FromWho.hers
                      ? HerMessageBubbleView(
                          colorScheme: colorScheme,
                          urlImageBubble:
                          chatProvider.messageList[index].imageUrl!,
                              //'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: chatProvider.messageList[index].text,
                        );
                },
              ),
            ),
          ),
          const MessageFieldBox(),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}