import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentantion/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChatScreen()
    );
  }
}
