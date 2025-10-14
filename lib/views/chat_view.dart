import 'package:flutter/material.dart';
import 'package:chatsex_bogarin/views/her_message_bubble_view.dart';
import 'package:chatsex_bogarin/views/my_message_bubble_view.dart';

class ChatView extends StatelessWidget{
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return index % 2 == 0
                    ? HerMessageBubbleView(
                      colorScheme: colorScheme,
                          message: "Hola amorcito",
                        )
                      : MyMessageBubbleView(
                          colorScheme: colorScheme,
                          message: "Hola mundo",
                          );
              }
            )
            )
          ),
          //const Text('Hola mi vida hermosa, como estas?')
        ],
      )
    );
  }
}