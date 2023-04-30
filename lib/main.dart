import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/themes/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

import 'presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ' Yes no App',
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
