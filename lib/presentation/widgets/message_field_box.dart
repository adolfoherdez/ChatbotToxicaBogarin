import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget{
  final void Function(String) onvalue;
  const MessageFieldBox({super.key, required this.onvalue});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: _customInputDecoration(
        colors: colors, 
        onSend: (){
          final textValue = textController.value.text;
          print(textController.value.text);
          if(textValue.isNotEmpty){
            
            widget.onvalue(textValue);
            textController.clear();
            focusNode.requestFocus();
          }
          print('quiere enviar el mensaje ${textController.text}');
          textController.clear();
          focusNode.requestFocus();
        }),
      
      onTapOutside: (event){
        print('hola we $event');
        focusNode.unfocus();
      },
      onFieldSubmitted: (value){
        print('aqui un push locochon porque despues se enojan: $value');
        focusNode.requestFocus();
        textController.clear();
      }
    );
  }

  InputDecoration _customInputDecoration({
    required ColorScheme colors,
    required VoidCallback onSend
    }) => 
    InputDecoration(
      enabledBorder: _customOutlineInputBorder(colors.primary),
      focusedBorder: _customOutlineInputBorder(colors.primaryContainer),
      hintText: "Escribe un mensaje",
      suffixIcon: IconButton(
        onPressed: onSend, icon: const Icon(Icons.send),),
    );

  OutlineInputBorder _customOutlineInputBorder (Color color) => 
    OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(20),
    );
}