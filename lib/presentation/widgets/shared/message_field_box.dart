import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    final underLineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
    final inputDecoration = InputDecoration(
      hintText: 'End your Message with "?" ',
      enabledBorder: underLineInputBorder,
      focusedBorder: underLineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          print('Con el botón $textValue');
        },
        icon: const Icon(Icons.send_outlined),
      ),
    );
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value ' + value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
